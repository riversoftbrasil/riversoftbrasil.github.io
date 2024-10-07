---
linkTitle: Atualizar versão
title: 
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 6
prev: /stcpserver/05-debug
next: /stcpserver/04-console
draft: false
lastmod: 2024-10-02
---

## Antes de Iniciar

Nos casos de migração de servidores, para preservar as configurações dos roteamentos (_STCPRen_) e agendamentos em operação no ambiente atual, recomendamos que o novo servidor possua as mesmas características (_hostname, endereço ip, recursos compartilhados_) ao antigo.

Antes de qualquer alteração no ambiente STCP, recomenda-se uma cópia de segurança dos diretórios de _Controle e Dados_ da aplicação.

![](img/upd-08.png)

## Migração dos Arquivos de Configuração (*.INI)

Para transferir as configurações do STCP, no servidor atual para um novo, após a instalação copie os arquivos de configuração *_.INI_, existentes no diretório de _Controle_ (Ex. **C:\STCPODT**), do servidor antigo para respectivo diretório do novo servidor.

Acesse o diretório de instalação do STCP no terminal e liste os arquivos com a extensão **.ini**

```bash {filename="D:\STCPODT"}
dir *.ini
```

![](img/upd-09.png)

* CTCP.INI
* CTCPSCHED.INI
* NOME-USUARIO1.INI ... NOME-USUARIO2.INI ...

## Migração Diretórios

A estrutura de pastas (Exemplo abaixo **D:\STCPODT\work\NOME-USUARIO**), configurada no diretório de **Dados** do STCP OFTP, também deverá ser copiada do **servidor atual** para o **novo**. Cada usuário criado (guia Usuários) possui a sua própria estrutura de pastas.

![](img/upd-10.png)

{{< callout type="info" >}}
  Dependendo das configurações atuais do ambiente em questão, outros arquivos como: regras de roteamento, script VBS, arquivos de lote, dentre outros, deverão ser copiados dos seus respectivos diretórios para o novo servidor.
{{< /callout >}}

---
## Serviço

{{< icon "chevron-right" >}}Acesse o Riversoft STCP OFTP Server Manager com privilégios de Administrador (_Ex: D:\STCPODT\Program\Riversoft STCP OFTP Server Manager_) e pare o serviço da aplicação.

![](img/upd-11.png)

{{< icon "chevron-right" >}} Após parar o serviço, certifique de validar se o serviço está parado:

![](img/upd-12.png)

{{< icon "chevron-right" >}}Após parar o serviço, certifique de deletá-lo, esse procedimento pode ser feito através do comando abaixo (Verifique as permissões e se necessário, execute o prompt como **administrador**)

```bash
sc delete [nome do serviço]
```
![](img/upd-13.png)

{{< icon "chevron-right" >}}Em _Adicionar/Remover Programas_ no _Painel de Controle_ do Windows, remova a versão atual do STCP OFTP Server. A estrutura de diretórios da aplicação (_Controle e Dados_) será mantida, juntamente com os arquivos de configuração (.INI).

![](img/upd-14.png "Selecione o programa do STCP Server para ser desinstalado")
<br>
![](img/upd-15.png "Desinstale a aplicação")

{{< icon "chevron-right" >}}Faça o download, da versão nova versão, através do link que é dispnibilizado pela Equipe de Sustentação da Riversoft e realize a instalação do produto.


{{< icon "chevron-right" >}}Após o processo de instalação, acesse o STCP OFTP Server Config (**Iniciar - Todos os programas - Riversoft STCP OFTP Server**) e na guia _Avançadas_ clique no botão _Controle de Log_.

![](img/upd-17.png)

{{< icon "chevron-right" >}}Na janela _Propriedades do Log_, no painel _Interface de Log (DLL)_, selecione a biblioteca de log desejada e clique no botão _OK_ para salvar esta alteração.

Para a gravação de log em **banco de dados** (ODBC), selecione o arquivo:
```
<disco>:\STCPODT\Program\stcplogodbc.dll
```
![](img/upd-18.png)

Para a gravação de log em **arquivo texto**, selecione o arquivo:
```
<disco>:\STCPODT\Program\stcplogtxt.dll
```
![](img/upd-19.png)

{{< icon "chevron-right" >}}Ainda na guia _Avançadas_, clique no botão _Controle de Autenticação_.

{{< icon "chevron-right" >}}Na guia _Geral da janela Autenticação_, no painel _Interface de Autenticação (DLL)_, selecione o arquivo: **[disco]:\STCPODT\Program\stcpauthwin.dll**

Certifique-se de que o campo _Tipo_, do painel _Autenticação_, esteja com o valor _STCP_ e clique no botão _OK_ para salvar as alterações realizadas.

![](img/upd-20.png)

{{< icon "chevron-right" >}}Clique no botão _OK_ para fechar o STCP OFTP Server Config. O próximo passo é a criação do <a href="/stcpserver/03-util/#serviço-do-stcp-oftp-server">serviço do STCP OFTP Server no Windows</a> {{< icon "arrow-top-right-on-square" >}} &nbsp;