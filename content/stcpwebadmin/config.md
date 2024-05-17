---
linkTitle: Configurações gerais
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 2
prev:
next:
draft: false
lastmod: 2024-05-06
---
# Configuração inicial

Para o correto funcionamento da ferramenta, deverão ser configurados os seguintes arquivos:

Configure o acesso ao Banco de Dados da ferramenta no arquivo **stcpweb_db.inc**

```
 <disco>:\Inetpub\wwwroot\STCPWEB_ADMIN\conf\stcpweb_db.inc
```
Os parâmetros a serem configurados neste arquivo são:

{{% details title="Banco de Dados" closed="true"%}}

* **$TipoDBConf** = tipo do gerenciador de banco de dados utilizado. As opções disponíveis são **ACCESS**, **MSSERVER**, **MySql**, **Oracle**, **SQLite** e **Sybase**.
* **$fnameConfDB** = nome da fonte de dados(ODBC) usada para conectar-se à base de dados de configuração.
* **$UsuarioDBConf** = nome do usuário para autenticação na base de dados.
* **$SenhaDBConf** = senha do usuário para autenticação na base de dados.

{{% /details %}}

{{% details title="Operadores, grupos e servidores" closed="true"%}}
Configuração da base de dados que gerenciará as informações de operadores, grupos e servidores do STCP OFTP Web Admin:

* **$TipoDBConf** = tipo do gerenciador de banco de dados utilizado. As opções disponíveis são **ACCESS**, **MSSERVER**, **MySql**, **Oracle**, **SQLite** e **Sybase**.
* **$fnameConfDB** = nome da fonte de dados(ODBC) usada para conectar-se à base de dados de configuração.
* **$UsuarioDBConf** = nome do usuário para autenticação na base de dados.
* **$SenhaDBConf** = senha do usuário para autenticação na base de dados.

{{% /details %}}


{{% details title="Códigos de erros e eventos" closed="true"%}}
 Configuração da base de dados que gerenciará as informações de códigos de erros e de eventos do sistema:

* **$TipoDBErros** = tipo do gerenciador de banco de dados utilizado. As opções disponíveis são ACCESS, MSSERVER, MySql, Oracle, SQLite,
Sybase.
* **$fnameErrosDB** = nome da fonte de dados(ODBC) usada para conectar-se à base de dados de erros.
* **$UserDBErros** = nome do usuário para autenticação na base de dados.
* **$SenDBErros** = senha do usuário para autenticação na base de dados.

{{% /details %}}

{{% details title="Log" closed="true"%}}
 Configuração da base de dados que gerenciará as informações de log dos operadores do STCP OFTP Web Admin:

* **$TipoDBLogOper**= tipo do gerenciador de banco de dados utilizado. As opções disponíveis são ACCESS, MSSERVER, MySql, Oracle, SQLite, Sybase.
* **$fnameLogDB** = nome da fonte de dados(ODBC) usada para conectar-se à base de dados de log.
* **$UserDBLogOper** = nome do usuário para autenticação na base de dados.
* **$SenDBLogOper** = senha do usuário para autenticação na base de dados

{{% /details %}}


{{% details title="Sessão da base de dados" closed="true"%}}
 <!-- Configuração da sessão da base de dados: -->

* **$SQLAlterSession** = este parâmetro deve ser usado quando a base de dados utilizada for Oracle 8i ou Oracle 10g. Para utilizar este parâmetro, basta retirar o comentário do início da linha.

{{% /details %}}


{{< callout type="info" >}}
Obs.: As configurações acima podem ser feitas em uma mesma base de dados, ou seja, não é necessário o uso de bases de dados distintas para o funcionamento do STCP OFTP Web Admin.
{{< /callout >}}

Verifique nas seção <a href="/stcpwebadmin/iis/">Configuração no IIS</a>, as configurações e procedimentos necessários no IIS para realizar o acesso ao STCP OFTP Web Admin

## Acesso ao STCP OFTP Web Admin

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp; Pelo seu navegador, entre com o endereço do STCP OFTP Web Admin.

![](./imagem2/img65.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Digite **stcpadmin** no campo operador e **teste** em senha.

{{< callout type="info" >}}
Obs.: para o primeiro login na ferramenta, qualquer nome de operador e senha serão aceitos, já que não existe nenhum operador cadastrado.
{{< /callout >}}

![](./imagem2/img66.png)

## Cadastro de Administrador do sistema

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Acesse **Manutenção → Cadastro → Operadores**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Clique no botão **+**.

![](./imagem2/img67.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Cadastre o administrador do sistema.

{{< callout type="info" >}}
Obs.: o administrador do sistema deverá ser obrigatoriamente o **stcpadmin**. Este operador não terá restrições de acesso e poderá gerenciar todos os outros operadores.
{{< /callout >}}

![](./imagem2/img68.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Clique no botão para salvar as informações do administrador do sistema.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">5</span> &nbsp;Clique em **Sair** para acessar o sistema com o novo nome de operador e a nova senha.

![](./imagem2/img69.png)

## Criação de Grupos

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Adicione grupos acessando **Manutenção → Cadastro → Grupos**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Clique no botão **+**.

![](./imagem2/img70.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Preencha os campos: nome, descrição e servidor/usuário.

{{< callout type="info" >}}
Obs.: para associar todos os servidores a todos os usuários, utilize \ . Para especificar os usuários relacionados ao servidor, basta separar com uma barra invertida \ . Exemplo: **SERV001\USER001**.
{{< /callout >}}

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Selecione os operadores e as permissões que farão parte do grupo.

![](./imagem2/img71.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">5</span> &nbsp;Clique no botão para salvar as informações do grupo.

## Cadastro de Operadores

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Agora cadastre os operadores que farão parte dos grupos criados.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Acesse **Manutenção → Cadastro → Operadores**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Clique no botão **+**.

![](./imagem2/img72.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Adicione os operadores, incluindo-os nos grupos adequados.

![](./imagem2/img73.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">5</span> &nbsp;Clique no botão para salvar as informações do operador.

## Cadastro dos Servidores

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Adicione grupos acessando **Manutenção → Cadastro → Servidores**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Clique no botão **+**.

![](./imagem2/img74.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Adicione as informações do servidor.

{{< callout type="info" >}}
Obs.: este servidor refere-se ao servidor de monitoração definido no STCP OFTP Server.
{{< /callout >}}

![](./imagem2/img75.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Clique no botão para salvar as informações do servidor.

## Funcionalidades

### Consulta aos Agendamentos

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Esta funcionalidade permite ao usuário consultar os agendamentos na ferramenta **STCP OFTP Server Enterprise**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Acesse **Consultas → Cadastro → Agendamentos**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Informe o nome completo do agendamento no campo **Nome do Agendamento**. Para filtrar os dados da pesquisa, informe também a descrição do agendamento.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Ou clique no botão para visualizar todos os agendamentos.

![](./imagem2/img76.png)

### Consulta aos Códigos de erros

Esta funcionalidade permite ao usuário consultar os **Códigos de erros**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Acesse **Consultas → Cadastro → Códigos de erros**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Informe o **Código de erro**. Para filtrar os dados da pesquisa, informe também
a descrição do erro.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Ou clique no botão para visualizar todos os códigos de erros.

![](./imagem2/img77.png)

### Consulta aos Códigos de eventos

Esta funcionalidade permite ao usuário consultar os **Códigos de eventos**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Acesse **Consultas → Cadastro → Códigos de eventos**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Informe o “Código do evento”. Para filtrar os dados da pesquisa, informe também a descrição do evento.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Ou clique no botão para visualizar todos os códigos de eventos.

![](./imagem2/img78.png)

### Consulta aos Grupos

Esta funcionalidade permite ao usuário **Consultar os Grupos**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Acesse **Consultas → Cadastro → Grupos**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Informe o **Grupo**. Para filtrar os dados da pesquisa, informe também a descrição do grupo.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Ou clique no botão para visualizar todos os grupos cadastrados.

![](./imagem2/img79.png)

### Consulta aos Operadores

Esta funcionalidade permite ao usuário consultar os **Operadores**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Acesse **Consultas → Cadastro → Operadores**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Informe o **Operador**. Para filtrar os dados da pesquisa, informe também a
descrição do operador.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Ou clique no botão para visualizar todos os operadores cadastrados.

![](./imagem2/img80.png)

### Consulta aos Usuários

Esta funcionalidade permite ao usuário consultar os **Usuários cadastrados**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Acesse **Consultas → Cadastro → Usuários**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Informe a **Identificação do usuário**. Para filtrar os dados da pesquisa, informe também a **descrição do usuário**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Ou clique no botão para visualizar todos os usuários cadastrados.

![](./imagem2/img81.png)

### Histórico das Transferências

Esta funcionalidade permite ao usuário consultar o **Histórico das Transferências**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Para consultar o histórico das transferências, acesse **Consultas → Transferências → Histórico**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Informe a **Identificação do usuário** e o **Nome do arquivo**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Selecione o **Período considerado** e a **Situação** (Todas, Recebidas/OK, Enviadas/OK, Falha Rx ou Falha Tx).

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Ou clique no botão para visualizar todo o histórico das transferências.

![](./imagem2/img82.png)

### Transferências Pendentes

Esta funcionalidade permite ao usuário consultar as **Transferências Pendentes**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Acesse **Consultas → Transferências → Pendentes**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Informe o **Usuário**. Para filtrar os dados da pesquisa, informe também a descrição do usuário.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Selecione o **Período considerado** e a **Situação** (Pend envio, Pend conf, Pend restart ou Pend tratamento).

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Ou clique no botão para visualizar todas as transferências pendentes.

![](./imagem2/img83.png)

### Relatório de Eventos de Operadores

Esta funcionalidade permite ao usuário consultar o relatório de eventos de operadores organizados por Data/Hora ou pelo operador, em ordem crescente. Os eventos listados no relatório são referentes ao início/fim de sessão, alteração de parâmetros e demais ações realizadas pelos operadores no STCP OFTP Web Admin.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Acesse **Relatórios → Eventos → Operadores**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Informe a **Identificação do Operador**. Para pesquisa avançada, digite no campo “Pesquisa Avançada” parte do texto do arquivo.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Selecione o **Período considerado**, e DataHora ou Operador em **Ordenado por**.

![](./imagem2/img84.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Ou clique no botão para visualizar todos os eventos.

![](./imagem2/img85.png)

### Relatório de Eventos do Sistema

Esta funcionalidade permite ao usuário consultar o relatório de eventos do Sistema organizado por Data/Hora ou módulo, em ordem crescente. Os eventos listados no relatório podem ser: início/fim do serviço STCP OFTP, início/fim de conexões entrantes ou saintes, início e término da agenda, início e término de transmissão e recepção de arquivos, erros do sistema/transferência etc.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Acesse **Relatórios → Eventos → Sistema**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Informe a **Identificação do Módulo**. Para pesquisa avançada, digite no campo “Pesquisa Avançada” o módulo do sistema onde ocorreu o evento. Exemplo: STCP, STCPMON, STCPCONF, etc.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Selecione o **Período considerado**, e DataHora ou Módulo em **Ordenado por**.

![](./imagem2/img86.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Ou clique no botão para visualizar todos os eventos.

![](./imagem2/img87.png)

### Relatório de Eventos dos Usuários

Esta funcionalidade permite ao usuário consultar o relatório de eventos dos usuários organizados por Data/Hora ou usuário, em ordem crescente. Os eventos listados no relatório podem ser: início/fim de conexões entrantes ou saintes, início e término de transmissão e recepção de arquivos, erros na transferência do usuário, dentre outros.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Acesse **Relatórios → Eventos → Usuários (Caixa Postal)**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Informe a **Identificação do Usuário**. Para pesquisa avançada, digite no campo “**Pesquisa Avançada**” parte do texto do arquivo.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Selecione o **Período considerado**, e DataHora ou Usuário em “Ordenado por”.

![](./imagem2/img88.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp; Ou clique no botão para visualizar todos os eventos.

![](./imagem2/img89.png)

### Relatório - Auditoria das transferências

Esta funcionalidade permite ao usuário consultar o relatório das transferências organizado por Data/Hora ou usuário, em ordem crescente.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Acesse **Relatórios** → **Transferências** → **Auditoria**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Informe a **Identificação do Usuário**. Para pesquisa avançada, digite no campo **Pesquisa Avançada** parte do texto do arquivo.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Selecione o **Período considerado**, e DataHora ou Usuário em **Ordenado por**.

![](./imagem2/img90.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Ou clique no botão para visualizar a auditoria de todas as transferências.

![](./imagem2/img91.png)

### Relatório - Estatísticas das transferências

Esta funcionalidade permite ao usuário consultar o relatório de estatística das transferências organizado por tipo.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp; Acesse **Relatórios → Transferências → Estatísticas**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Informe a **Identificação do usuário**. Para filtrar os dados da pesquisa, informe o **Nome do arquivo**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Selecione o **Período considerado**, e o **Tipo** de relatório (consolidado, anual, mensal, semanal, dia da semana, Diário ou por hora).

![](./imagem2/img92.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Ou clique no botão para visualizar a estatística de todas as transferências.

![](./imagem2/img93.png)

### Relatório - Gráficos das transferências

Esta funcionalidade permite ao usuário visualizar o gráfico das transferências organizado por tipo.

Acesse **Relatórios → Transferências → Gráficos**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Informe a **Identificação do usuário**. Para filtrar os dados da pesquisa, informe o **Nome do arquivo**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Selecione o **Período considerado**, e o **Tipo** de relatório (consolidado, anual, mensal, semanal, dia da semana, Diário ou por hora).

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Escolha a forma como será apresentado o gráfico.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Ou clique no botão para visualizar o gráfico de todas as transferências.

![](./imagem2/img94.png)

### Relatório – Roteamentos

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Acesse **Relatórios → Roteamentos → Auditoria**.
A pesquisa pode ser feita informando a **Identificação da origem**, por exemplo, que é o nome de usuário.

```
Exemplo: O005RIVERSOFT.
```

![](./imagem2/img95.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Ou informe a **Identificação do destino**.

```
Exemplo: SRSVM-T02.
```

![](./imagem2/img96.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Para visualizar todos os relatórios, clique no botão.

![](./imagem2/img97.png)

### Importação de códigos de erros

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Para importar os códigos de erros de um arquivo xml para o banco de dados do STCP OFTP Web Admin, acesse **Manutenção → Banco de Dados → Importar Dados**.

![](./imagem2/img98.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Em **Tipo de Dados**, escolha a opção **Códigos de Erros** e clique no botão.

![](./imagem2/img99.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Selecione o arquivo encontrado e clique no botão.

![](./imagem2/img100.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Quando o processo de importação for concluído, será mostrada a confirmação.

![](./imagem2/img101.png)

### Importação de códigos de eventos

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Para importar os códigos de eventos de um arquivo xml para o banco de dados da STCP OFTP Web Admin, acesse **Manutenção → Banco de Dados → Importar Dados**.

![](./imagem2/img102.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Em Tipo de Dados, escolha a opção Códigos de Eventos e clique no botão.

![](./imagem2/img103.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Selecione o arquivo encontrado e clique no botão.

![](./imagem2/img103.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Quando o processo de importação for concluído, será mostrada a confirmação.

![](./imagem2/img104.png)

### Exportação de códigos de erros

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Para exportar os códigos de erros da base de dados do STCP OFTP Web Admin para um arquivo xml, acesse **Manutenção → Banco de Dados → Exportar Dados**.

![](./imagem2/img106.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Em **Tipo de Dados**, escolha a opção **Códigos de Erros** e clique no botão.

![](./imagem2/img107.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Para realizar a exportação dos dados, clique no botão.

![](./imagem2/img108.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Quando o processo de exportação for concluído, será mostrada a confirmação.

![](./imagem2/img109.png)

### Exportação de códigos de eventos

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Para exportar os códigos de eventos da base de dados do STCP OFTP Web Admin para um arquivo xml, acesse **Manutenção → Banco de Dados → Exportar Dados**.

![](./imagem2/img110.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Em Tipo de Dados, escolha a opção Códigos de Eventos e clique no botão.

![](./imagem2/img111.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Para realizar a exportação dos dados, clique no botão.

![](./imagem2/img112.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Quando o processo de exportação for concluído, será mostrada a confirmação.

![](./imagem2/img113.png)

### Cadastro de códigos de erros

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Para cadastrar um código de erro, acesse **Manutenção → Cadastro → Códigos de erros**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Clique no botão **+**.

![](./imagem2/img114.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Preencha os campos: **código, descrição** e **procedimento**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Selecione a classificação do erro no campo **Classe**.

![](./imagem2/img115.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">5</span> &nbsp;Clique no botão para salvar as informações do código de erro.

### Cadastro de códigos de eventos

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Para cadastrar um código de evento, acesse **Manutenção → Cadastro → Códigos de eventos**.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Clique no botão.

![](./imagem2/img116.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Preencha os campos: **código, descrição e procedimento**.

![](./imagem2/img117.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Clique no botão para salvar as informações do código de evento.

### Modificar senha de operador

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Para modificar a senha do operador do STCP OFTP Web Admin, acesse **Manutenção → Modificar senha**.

{{< callout type="info" >}}
  Obs.: este procedimento modifica a senha do operador que está logado na ferramenta.
{{< /callout >}}

![](./imagem2/img118.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Preencha os campos: **senha atual, nova senha** e **confirma**.

![](./imagem2/img119.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Clique no botão para salvar a nova senha.

### Limpeza de diretório de Usuários (Caixa Postal)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Para realizar a limpeza de diretório de uma caixa postal do STCP OFTP Server, acesse **Manutenção → Usuários (Caixa Postal) → Limpar diretório**.

![](./imagem2/img120.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Preencha os campos:

| Campo      | Descrição |
| :-----------: | :-----------: |
| Identificação do usuário  | Nome da caixa postal.       |
| Nome do arquivo   | Nome do arquivo que deseja buscar. Caso queira ver todos os arquivos, deixe este campo em branco. |
| Período considerado   | Refere-se à data de criação do arquivo dentro do diretório especificado.        |
| Diretório   | Selecione o diretório onde deseja fazer a limpeza. As opções disponíveis são: _backup, pendente de envio, pendente de confirmação, recebidos, pendente de restart_.     |
----------

<br>

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Clique no botão para realizar a pesquisa no diretório.

![](./imagem2/img121.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Selecione os arquivos que deseja remover e clique no botão.

![](./imagem2/img122.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">5</span> &nbsp;Quando o processo de limpeza for concluído, será mostrada a confirmação.

![](./imagem2/img123.png)

### Recuperar transferência de Usuários (Caixa Postal)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Para recuperar uma transferência de uma caixa postal do STCP OFTP Server, acesse **Manutenção → Usuários (Caixa Postal) → Recuperar transferência**.

{{< callout type="info" >}}
  Obs.: este procedimento recupera uma transferência do diretório **Backup** e coloca no diretório **Saída** da caixa postal.
{{< /callout >}}

![](./imagem2/img124.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Preencha os campos:

| Campo      | Descrição |
| :-----------: | :-----------: |
| Identificação do usuário  | Nome da caixa postal.       |
| Nome do arquivo   | Nome completo do arquivo que deseja recuperar. |
| Período considerado   | Refere-se à data de criação do arquivo dentro do diretório de backup.        |
----------

<br>

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Clique no botão para buscar o arquivo.

![](./imagem2/img125.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Selecione o arquivo e clique no botão.

![](./imagem2/img126.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">5</span> &nbsp;Quando o processo de recuperação for concluído, será mostrada a confirmação.

![](./imagem2/img127.png)

### Resetar senha de Usuários (Caixa Postal)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Para resetar a senha de uma caixa postal do STCP OFTP Server, acesse **Manutenção → Usuários (Caixa Postal) → Resetar senha**.

![](./imagem2/img128.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Preencha os campos: **usuário (caixa postal), nova senha** e **confirma**.

![](./imagem2/img129.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Clique no botão para salvar a nova senha da caixa postal.

### Executar agendamento do STCP OFTP Server

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Para executar um agendamento do STCP OFTP Server, acesse **Monitoração → Agendamentos → Executar.**

![](./imagem2/img130.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Preencha os campos:

| Campo      | Descrição |
| :-----------: | :-----------: |
| Agendamento | Nome do agendamento que deseja buscar. Caso queira ver todos os agendamentos, deixe este campo em branco.       |
| Descrição   | Descrição do agendamento. Use este campo para filtrar os agendamentos pela descrição. |
----------
<br>

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Clique no botão para buscar o agendamento.

![](./imagem2/img131.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Clique sobre o nome do agendamento para executá-lo.

![](/imagem2/img132.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">5</span> &nbsp;Será aberta uma nova janela informando o resultado da execução do agendamento.

{{< callout type="info" >}}
  Obs.: se o agendamento estiver desabilitado, não será possível executá-lo.
{{< /callout >}}

![](./imagem2/img133.png)

### Alterar estado de agendamento do STCP OFTP Server

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Para alterar o estado de um agendamento do STCP OFTP Server, acesse **Monitoração → Agendamentos → Alterar estado**.

{{< callout type="info" >}}
  Obs.: este procedimento permite que um agendamento seja bloqueado/desbloqueado.
{{< /callout >}}

![](./imagem2/img134.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Preencha os campos:

| Campo      | Descrição |
| :-----------: | :-----------: |
| Agendamento | Nome do agendamento que deseja buscar. Caso queira ver todos os agendamentos, deixe este campo em branco.       |
| Descrição   | Descrição do agendamento. Use este campo para filtrar os agendamentos pela descrição. |
----------
<br>

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Clique no botão para buscar o agendamento.

![](./imagem2/img135.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Clique sobre o nome do agendamento para alterar seu estado.

![](./imagem2/img136.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">5</span> &nbsp;O estado do agendamento é mostrado no lado direito da janela.

![](./imagem2/img137.png)

### Monitorar eventos do servidor

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp; Para visualizar os eventos do servidor de monitoração do STCP OFTP Server, acesse **Monitoração → Servidor → Eventos**.

![](./imagem2/img138.png)

{{< callout type="info" >}}
 A monitoração do servidor permite visualizar, em tempo real, todos os eventos¹ da sessão atual do serviço do STCP OFTP. Esta página é atualizada de tempos em tempos.
{{< /callout >}}

![](./imagem2/img139.png)

> ¹ Início/fim do serviço STCP OFTP, Início/Fim de conexões entrantes/saintes, Início e Término da agenda, Início e Término de transmissão e recepção de arquivos, Erros do sistema/transferência, dentre outros.

### Monitorar transferências

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Para monitorar as transferências em andamento, acesse **Monitoração → Servidor → Transferências em andamento.**

![](./imagem2/img140.png)

{{< callout type="info" >}}
 As transferências são monitoradas em tempo real e a página é atualizada de tempos em tempos.
{{< /callout >}}

![](./imagem2/img141.png)

### Iniciar conexão com usuários (Caixa Postal)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Para iniciar uma conexão com uma caixa postal do STCP OFTP Server, acesse **Monitoração → Usuários (Caixa Postal) → Iniciar Conexão**.

{{< callout type="info" >}}
Obs.: esta funcionalidade só está disponível para caixas postais que estejam com a conexão automática habilitada.
{{< /callout >}}

![](./imagem2/img142.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Preencha os campos:

| Campo      | Descrição |
| :-----------: | :-----------: |
| Identificação do usuário | Nome da caixa postal. Caso queira ver todas as caixas postais, deixe este campo em branco. |
| Descrição do usuário   | Descrição da caixa postal. Use este campos para filtrar as caixas postais pela descrição. |
----------
<br>

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Clique no botão para realizar a busca.

![](./imagem2/img143.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Clique sobre o  nome da caixa postal para iniciar a conexão.

![](./imagem2/img144.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">5</span> &nbsp;Será aberta uma nova janela mostrando o resultado da conexão do usuário.

![](./imagem2/img145.png)

### Alterar estado de usuários (Caixa Postal)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp;Para alterar o estado de uma caixa postal do STCP OFTP Server, acesse **Monitoração → Usuários (Caixa Postal) → Alterar estado**.

{{< callout type="info" >}}
Obs.: este procedimento permite que uma caixa postal seja bloqueada/desbloqueada.
{{< /callout >}}

![](./imagem2/img146.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Preencha os campos:

| Campo      | Descrição |
| :-----------: | :-----------: |
| Identificação do usuário | Nome da caixa postal que deseja buscar. Caso queira ver todas as caixas postais, deixe este campo em branco. |
| Descrição do usuário   | Descrição da caixa postal. Use este campos para filtrar as caixas postais pela descrição. |
----------
<br>

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp;Clique no botão para realizar a busca.

![](./imagem2/img147.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp;Clique sobre o noem da caixa postal para alterar seu estado.

![](./imagem2/img148.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">5</span> &nbsp;O estado da caixa postal é mostrado no lado direito da janela.

![](./imagem2/img149.png)

## Glossário

**I**

**IUSR**
Conta Interna para acesso anônimo ao Internet Information Service.

**S**

**System DSN**
Pode ser usado por alguém que tenha acesso à máquina.

<!-- ## Referências

Disponível em: (<http://www.webopedia.com/TERM/D/DNS.html>).

Acesso em: 16 de agosto de 2007. -->
