---
linkTitle: Instalação
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 1
prev: /stcpwebadmin
next:
# draft: false
lastmod: 2024-05-27
---
# Distribuição dos pacotes

Abra o link de instalação que será disponibilizado pela Equipe de Sustentação da Riversoft e extraia os arquivos do produto para iniciar o processo.

## Criação do Banco de Dados

O STCP OFTP Web Admin é compatível com diversos bancos de dados existentes no mercado, verifique mais informações na seção <a href="/utils/database" target="_blank">Banco de Dados homologados</a> {{< icon "arrow-top-right-on-square" >}} &nbsp;

Crie um banco de dados **STCPWEB_DB** no servidor utilizando a ferramenta adequada ao sistema.

A pasta **\<disco>:\Inetpub\wwwroot\STCPWEB_ADMIN\conf\scripts** contém os scripts para a criação das tabelas do banco de dados **STCPWEB_DB**.

<!-- ![](./imagem2/img16.png) -->
![](imagem/web-admin-06.png "Scripts tabelas do Banco de Dados")

## Atualização da tabela TBLOperadores (SQL Server, MySQL e Oracle)

Nas versões 4.3.3 ou superiores, do STCP OFTP Web Admin, veja em <a href="/changelog/stcpadmin/" target="_blank">Changelog</a> {{< icon "arrow-top-right-on-square" >}} &nbsp;, foram implementadas diversas melhorias como: Autenticação através de LDAP, acesso às políticas de segurança e novos Registros de logs de operadores.

Para a utilização das novas versões do produto, será necessária também a atualização da tabela _TBLOPERADORES_, do banco de dados utilizado pela ferramenta, utilizando os scripts abaixo:

### SQL Server

```sql
ALTER TABLE TBLOPERADORES ADD LOGINFAILS INT NOT NULL CONSTRAINT
[TBLOPERADORES_LOGINFAILS_DEFAULT]
DEFAULT(0);
```

### MySQL

```mysql
ALTER TABLE TBLOPERADORES ADD COLUMN (LOGINFAILS DECIMAL(38,0) DEFAULT 0 NOT NULL);
```

### Oracle

```sql
ALTER TABLE TBLOPERADORES ADD (LOGINFAILS NUMBER(3,0) DEFAULT 0 NOT NULL);
```

## Driver ODBC para acesso ao Banco de Dados

Os seguintes procedimentos devem ser executados para configuração do driver ODBC de acesso ao Banco de Dados.

{{< icon "chevron-right" >}}Acesse a ferramenta de configuração do ODBC.

![](imagem/web-admin-07.png "")

{{< icon "chevron-right" >}}Selecione a guia **DSN de Sistema** para adicionar a fonte de dados e clique em **Adicionar**.

![](imagem/web-admin-08.png)

{{< icon "chevron-right" >}}Selecione o driver na lista e clique em **Concluir**.

![](imagem/web-admin-09.png)

{{< icon "chevron-right" >}}Na guia **Geral**, configure as opções conforme informadas e clique no botão **OK** para salvar.

<!-- Na guia **Geral**, configure as opções conforme informadas (para Oracle8) e clique no botão **OK** para salvar. -->

![](./imagem2/img20.png)

Clique no botão **OK** para finalizar a configuração da fonte de dados ODBC.

![](./imagem2/img21.png)

## Instalação e configuração do PHP

Faça o download da última versão do processador de scripts PHP do site www.php.net e execute os passos seguintes:

{{< icon "chevron-right" >}}Extraia o arquivo do PHP no diretório **<disco>:\php**.

{{< icon "chevron-right" >}}Crie o diretório de controle de sessão **\<disco>:\php\sessiondata**.

{{< icon "chevron-right" >}}Copie o arquivo **PHP-IIS.INI** do diretório **\<disco>:\STCPWEB_ADMIN\conf** para o diretório **\<disco>:\php** com o nome **PHP.INI**

{{< icon "chevron-right" >}}Altere o arquivo **PHP.INI** com os parâmetros abaixo e salve o arquivo.

![](./imagem2/img22.png)

Os seguintes parâmetros devem ser alterados para refletir o ambiente de instalação:

```php {filename="PHP.INI"}
short_open_tag = On
allow_call_time_pass_reference = On
max_execution_time = 300
error_reporting = E_ALL & ~E_NOTICE
display_errors = On
register_globals = On
cgi.force_redirect =0
fastcgi.impersonate =1
cgi.rfc2616_headers = 1
include_path = ".;<disco>:\php\includes
session.save_path = "<disco>:\php\sessiondata"
session.use_cookies = 1
```
{{< callout type="info" >}}
Obs: O caracter “;” (ponto e vírgula) no início da linha indica um comentário. Para os parâmetros acima o caracter deve ser removido.
{{< /callout >}}


