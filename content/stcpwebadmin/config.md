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
lastmod: 2024-10-10
---
# Configuração inicial

Para o correto funcionamento da ferramenta, deverão ser configurados os seguintes arquivos:

Configure o acesso ao Banco de Dados da ferramenta no arquivo **stcpweb_db.inc**

```
 <disco>:\Inetpub\wwwroot\STCPWEB_ADMIN\conf\stcpweb_db.inc
```
Os parâmetros a serem configurados neste arquivo são:

{{% details title="Banco de Dados" closed="false"%}}

* **$TipoDBConf** = tipo do gerenciador de banco de dados utilizado. As opções disponíveis são **ACCESS**, **MSSERVER**, **MySql**, **Oracle**, **SQLite** e **Sybase**.
* **$fnameConfDB** = nome da fonte de dados(ODBC) usada para conectar-se à base de dados de configuração.
* **$UsuarioDBConf** = nome do usuário para autenticação na base de dados.
* **$SenhaDBConf** = senha do usuário para autenticação na base de dados.

{{% /details %}}

{{% details title="Operadores, grupos e servidores" closed="false"%}}
Configuração da base de dados que gerenciará as informações de operadores, grupos e servidores do STCP OFTP Web Admin:

* **$TipoDBConf** = tipo do gerenciador de banco de dados utilizado. As opções disponíveis são **ACCESS**, **MSSERVER**, **MySql**, **Oracle**, **SQLite** e **Sybase**.
* **$fnameConfDB** = nome da fonte de dados(ODBC) usada para conectar-se à base de dados de configuração.
* **$UsuarioDBConf** = nome do usuário para autenticação na base de dados.
* **$SenhaDBConf** = senha do usuário para autenticação na base de dados.

{{% /details %}}


{{% details title="Códigos de erros e eventos" closed="false"%}}
 Configuração da base de dados que gerenciará as informações de códigos de erros e de eventos do sistema:

* **$TipoDBErros** = tipo do gerenciador de banco de dados utilizado. As opções disponíveis são ACCESS, MSSERVER, MySql, Oracle, SQLite,
Sybase.
* **$fnameErrosDB** = nome da fonte de dados(ODBC) usada para conectar-se à base de dados de erros.
* **$UserDBErros** = nome do usuário para autenticação na base de dados.
* **$SenDBErros** = senha do usuário para autenticação na base de dados.

{{% /details %}}

{{% details title="Log" closed="false"%}}
 Configuração da base de dados que gerenciará as informações de log dos operadores do STCP OFTP Web Admin:

* **$TipoDBLogOper**= tipo do gerenciador de banco de dados utilizado. As opções disponíveis são ACCESS, MSSERVER, MySql, Oracle, SQLite, Sybase.
* **$fnameLogDB** = nome da fonte de dados(ODBC) usada para conectar-se à base de dados de log.
* **$UserDBLogOper** = nome do usuário para autenticação na base de dados.
* **$SenDBLogOper** = senha do usuário para autenticação na base de dados

{{% /details %}}


{{% details title="Sessão da base de dados" closed="false"%}}
 <!-- Configuração da sessão da base de dados: -->

* **$SQLAlterSession** = este parâmetro deve ser usado quando a base de dados utilizada for Oracle 8i ou Oracle 10g. Para utilizar este parâmetro, basta retirar o comentário do início da linha.

{{% /details %}}


{{< callout type="info" >}}
Obs.: As configurações acima podem ser feitas em uma mesma base de dados, ou seja, não é necessário o uso de bases de dados distintas para o funcionamento do STCP OFTP Web Admin.
{{< /callout >}}

Verifique nas seção <a href="/stcpwebadmin/iis/">Configuração no IIS</a>, as configurações e procedimentos necessários no IIS para realizar o acesso ao STCP OFTP Web Admin

## Acesso ao STCP OFTP Web Admin

{{< icon "chevron-right" >}}Pelo seu navegador, entre com o endereço do STCP OFTP Web Admin.

![](./imagem2/img65.png)

{{< icon "chevron-right" >}}Digite **stcpadmin** no campo operador e **teste** em senha.

{{< callout type="info" >}}
Obs.: para o primeiro login na ferramenta, qualquer nome de operador e senha serão aceitos, já que não existe nenhum operador cadastrado.
{{< /callout >}}

![](./imagem2/img66.png)

## Cadastro de Administrador do sistema

{{< icon "chevron-right" >}}Acesse **Manutenção → Cadastro → Operadores**.

{{< icon "chevron-right" >}}Clique no botão **+**.

![](./imagem2/img67.png)

{{< icon "chevron-right" >}}Cadastre o administrador do sistema.

{{< callout type="info" >}}
Obs.: o administrador do sistema deverá ser obrigatoriamente o **stcpadmin**. Este operador não terá restrições de acesso e poderá gerenciar todos os outros operadores.
{{< /callout >}}

![](./imagem2/img68.png)

{{< icon "chevron-right" >}}Clique no botão para salvar as informações do administrador do sistema.

{{< icon "chevron-right" >}}Clique em **Sair** para acessar o sistema com o novo nome de operador e a nova senha.

![](./imagem2/img69.png)

## Criação de Grupos

{{< icon "chevron-right" >}}Adicione grupos acessando **Manutenção → Cadastro → Grupos**.

{{< icon "chevron-right" >}}Clique no botão **+**.

![](./imagem2/img70.png)

{{< callout type="info" >}}
Obs.: para associar todos os servidores a todos os usuários, utilize \ . Para especificar os usuários relacionados ao servidor, basta separar com uma barra invertida \ . Exemplo: **SERV001\USER001**.
{{< /callout >}}

{{< icon "chevron-right" >}}Selecione os operadores e as permissões que farão parte do grupo.

![](./imagem2/img71.png "Preencha os campos: nome, descrição e servidor/usuário")

![](./imagem2/btn.png "Clique no botão para salvar as informações do grupo")

## Cadastro de Operadores

{{< icon "chevron-right" >}}Agora cadastre os operadores que farão parte dos grupos criados.

{{< icon "chevron-right" >}}Acesse **Manutenção → Cadastro → Operadores**.

{{< icon "chevron-right" >}}Clique no botão **+**.

![](./imagem2/img72.png)

{{< icon "chevron-right" >}}Adicione os operadores, incluindo-os nos grupos adequados.

![](./imagem2/img73.png)

![](./imagem2/btn.png "Clique no botão para salvar as informações do operador")

## Cadastro dos Servidores

{{< icon "chevron-right" >}}Adicione grupos acessando **Manutenção → Cadastro → Servidores**.

{{< icon "chevron-right" >}}Clique no botão **+**.

![](./imagem2/img74.png)

{{< icon "chevron-right" >}}Adicione as informações do servidor.

{{< callout type="info" >}}
Obs.: este servidor refere-se ao servidor de monitoração definido no STCP OFTP Server.
{{< /callout >}}

![](./imagem2/img75.png)

![](./imagem2/btn.png "Clique no botão para salvar as informações do servidor")

## Funcionalidades

### Consulta aos Agendamentos

{{< icon "chevron-right" >}}Esta funcionalidade permite ao usuário consultar os agendamentos na ferramenta **STCP OFTP Server Enterprise**.

{{< icon "chevron-right" >}}Acesse **Consultas → Cadastro → Agendamentos**.

{{< icon "chevron-right" >}}Informe o nome completo do agendamento no campo **Nome do Agendamento**. Para filtrar os dados da pesquisa, informe também a descrição do agendamento.

{{< icon "chevron-right" >}}Ou clique no botão para visualizar todos os agendamentos.

![](./imagem2/img76.png)

### Consulta aos Códigos de erros

Esta funcionalidade permite ao usuário consultar os **Códigos de erros**.

{{< icon "chevron-right" >}}Acesse **Consultas → Cadastro → Códigos de erros**.

{{< icon "chevron-right" >}}Informe o **Código de erro**. Para filtrar os dados da pesquisa, informe também
a descrição do erro.

![](./imagem2/img77.png "Ou clique na lupa para visualizar todos os códigos de erros conforme imagem abaixo")

![](./imagem2/all-errors.png)

### Consulta aos Códigos de eventos

Esta funcionalidade permite ao usuário consultar os **Códigos de eventos**.

{{< icon "chevron-right" >}}Acesse **Consultas → Cadastro → Códigos de eventos**.

{{< icon "chevron-right" >}}Informe o “Código do evento”. Para filtrar os dados da pesquisa, informe também a descrição do evento.

{{< icon "chevron-right" >}}Ou clique na lupa para visualizar todos os códigos de eventos.

![](./imagem2/img78.png)

### Consulta aos Grupos

Esta funcionalidade permite ao usuário **Consultar os Grupos**.

{{< icon "chevron-right" >}}Acesse **Consultas → Cadastro → Grupos**.

{{< icon "chevron-right" >}}Informe o **Grupo**. Para filtrar os dados da pesquisa, informe também a descrição do grupo.

{{< icon "chevron-right" >}}Ou clique na lupa para visualizar todos os grupos cadastrados.

![](./imagem2/img79.png)

### Consulta aos Operadores

Esta funcionalidade permite ao usuário consultar os **Operadores**.

{{< icon "chevron-right" >}}Acesse **Consultas → Cadastro → Operadores**.

{{< icon "chevron-right" >}}Informe o **Operador**. Para filtrar os dados da pesquisa, informe também a
descrição do operador.

{{< icon "chevron-right" >}}Ou clique na lupa para visualizar todos os operadores cadastrados.

![](./imagem2/img80.png)

### Consulta aos Usuários

Esta funcionalidade permite ao usuário consultar os **Usuários cadastrados**.

{{< icon "chevron-right" >}}Acesse **Consultas → Cadastro → Usuários**.

{{< icon "chevron-right" >}}Informe a **Identificação do usuário**. Para filtrar os dados da pesquisa, informe também a **descrição do usuário**.

{{< icon "chevron-right" >}}Ou clique na lupa para visualizar todos os usuários cadastrados.

![](./imagem2/img81.png)

### Histórico das Transferências

Esta funcionalidade permite ao usuário consultar o **Histórico das Transferências**.

{{< icon "chevron-right" >}}Para consultar o histórico das transferências, acesse **Consultas → Transferências → Histórico**.

{{< icon "chevron-right" >}}Informe a **Identificação do usuário** e o **Nome do arquivo**.

{{< icon "chevron-right" >}}Selecione o **Período considerado** e a **Situação** (Todas, Recebidas/OK, Enviadas/OK, Falha Rx ou Falha Tx).

{{< icon "chevron-right" >}}Ou clique na lupa para visualizar todo o histórico das transferências.

![](./imagem2/img82.png)

### Transferências Pendentes

Esta funcionalidade permite ao usuário consultar as **Transferências Pendentes**.

{{< icon "chevron-right" >}}Acesse **Consultas → Transferências → Pendentes**.

{{< icon "chevron-right" >}}Informe o **Usuário**. Para filtrar os dados da pesquisa, informe também a descrição do usuário.

{{< icon "chevron-right" >}}Selecione o **Período considerado** e a **Situação** (Pend envio, Pend conf, Pend restart ou Pend tratamento).

{{< icon "chevron-right" >}}Ou clique no botão para visualizar todas as transferências pendentes.

![](./imagem2/img83.png)

### Relatório de Eventos de Operadores

Esta funcionalidade permite ao usuário consultar o relatório de eventos de operadores organizados por Data/Hora ou pelo operador, em ordem crescente. Os eventos listados no relatório são referentes ao início/fim de sessão, alteração de parâmetros e demais ações realizadas pelos operadores no STCP OFTP Web Admin.

{{< icon "chevron-right" >}}Acesse **Relatórios → Eventos → Operadores**.

{{< icon "chevron-right" >}}Informe a **Identificação do Operador**. Para pesquisa avançada, digite no campo “Pesquisa Avançada” parte do texto do arquivo.

{{< icon "chevron-right" >}}Selecione o **Período considerado**, e DataHora ou Operador em **Ordenado por**.

![](./imagem2/img84.png)

{{< icon "chevron-right" >}}Ou clique na lupa para visualizar todos os eventos.

![](./imagem2/img85.png)

### Relatório de Eventos do Sistema

Esta funcionalidade permite ao usuário consultar o relatório de eventos do Sistema organizado por Data/Hora ou módulo, em ordem crescente. Os eventos listados no relatório podem ser: início/fim do serviço STCP OFTP, início/fim de conexões entrantes ou saintes, início e término da agenda, início e término de transmissão e recepção de arquivos, erros do sistema/transferência etc.

{{< icon "chevron-right" >}}Acesse **Relatórios → Eventos → Sistema**.

{{< icon "chevron-right" >}}Informe a **Identificação do Módulo**. Para pesquisa avançada, digite no campo “Pesquisa Avançada” o módulo do sistema onde ocorreu o evento. Exemplo: STCP, STCPMON, STCPCONF, etc.

{{< icon "chevron-right" >}}Selecione o **Período considerado**, e DataHora ou Módulo em **Ordenado por**.

![](./imagem2/img86.png)

{{< icon "chevron-right" >}}Ou clique no botão para visualizar todos os eventos.

![](./imagem2/img87.png)

### Relatório de Eventos dos Usuários

Esta funcionalidade permite ao usuário consultar o relatório de eventos dos usuários organizados por Data/Hora ou usuário, em ordem crescente. Os eventos listados no relatório podem ser: início/fim de conexões entrantes ou saintes, início e término de transmissão e recepção de arquivos, erros na transferência do usuário, dentre outros.

{{< icon "chevron-right" >}}Acesse **Relatórios → Eventos → Usuários (Caixa Postal)**.

{{< icon "chevron-right" >}}Informe a **Identificação do Usuário**. Para pesquisa avançada, digite no campo “**Pesquisa Avançada**” parte do texto do arquivo.

{{< icon "chevron-right" >}}Selecione o **Período considerado**, e DataHora ou Usuário em “Ordenado por”.

![](./imagem2/img88.png)

{{< icon "chevron-right" >}}Ou clique no botão para visualizar todos os eventos.

![](./imagem2/img89.png)

### Relatório - Auditoria das transferências

Esta funcionalidade permite ao usuário consultar o relatório das transferências organizado por Data/Hora ou usuário, em ordem crescente.

{{< icon "chevron-right" >}}Acesse **Relatórios** → **Transferências** → **Auditoria**.

{{< icon "chevron-right" >}}Informe a **Identificação do Usuário**. Para pesquisa avançada, digite no campo **Pesquisa Avançada** parte do texto do arquivo.

{{< icon "chevron-right" >}}Selecione o **Período considerado**, e DataHora ou Usuário em **Ordenado por**.

![](./imagem2/img90.png)

{{< icon "chevron-right" >}}Ou clique no botão para visualizar a auditoria de todas as transferências.

![](./imagem2/img91.png)

### Relatório - Estatísticas das transferências

Esta funcionalidade permite ao usuário consultar o relatório de estatística das transferências organizado por tipo.

{{< icon "chevron-right" >}}Acesse **Relatórios → Transferências → Estatísticas**.

{{< icon "chevron-right" >}}Informe a **Identificação do usuário**. Para filtrar os dados da pesquisa, informe o **Nome do arquivo**.

{{< icon "chevron-right" >}}Selecione o **Período considerado**, e o **Tipo** de relatório (consolidado, anual, mensal, semanal, dia da semana, Diário ou por hora).

![](./imagem2/img92.png)

{{< icon "chevron-right" >}}Ou clique no botão para visualizar a estatística de todas as transferências.

![](./imagem2/img93.png)

### Relatório - Gráficos das transferências

Esta funcionalidade permite ao usuário visualizar o gráfico das transferências organizado por tipo.

Acesse **Relatórios → Transferências → Gráficos**.

{{< icon "chevron-right" >}}Informe a **Identificação do usuário**. Para filtrar os dados da pesquisa, informe o **Nome do arquivo**.

{{< icon "chevron-right" >}}Selecione o **Período considerado**, e o **Tipo** de relatório (consolidado, anual, mensal, semanal, dia da semana, Diário ou por hora).

{{< icon "chevron-right" >}}Escolha a forma como será apresentado o gráfico.

{{< icon "chevron-right" >}}Ou clique no botão para visualizar o gráfico de todas as transferências.

![](./imagem2/img94.png)

### Relatório – Roteamentos

{{< icon "chevron-right" >}}Acesse **Relatórios → Roteamentos → Auditoria**.
A pesquisa pode ser feita informando a **Identificação da origem**, por exemplo, que é o nome de usuário.

```
Exemplo: O005RIVERSOFT.
```

![](./imagem2/img95.png)

{{< icon "chevron-right" >}}Ou informe a **Identificação do destino**.

```
Exemplo: SRSVM-T02.
```

![](./imagem2/img96.png)

{{< icon "chevron-right" >}}Para visualizar todos os relatórios, clique no botão.

![](./imagem2/img97.png)

### Importação de códigos de erros

{{< icon "chevron-right" >}}Para importar os códigos de erros de um arquivo xml para o banco de dados do STCP OFTP Web Admin, acesse **Manutenção → Banco de Dados → Importar Dados**.

![](./imagem2/img98.png)

{{< icon "chevron-right" >}}Em **Tipo de Dados**, escolha a opção **Códigos de Erros** e clique no botão.

![](./imagem2/img99.png)

{{< icon "chevron-right" >}}Selecione o arquivo encontrado e clique no botão.

![](./imagem2/img100.png)

{{< icon "chevron-right" >}}Quando o processo de importação for concluído, será mostrada a confirmação.

![](./imagem2/img101.png)

### Importação de códigos de eventos

{{< icon "chevron-right" >}}Para importar os códigos de eventos de um arquivo xml para o banco de dados da STCP OFTP Web Admin, acesse **Manutenção → Banco de Dados → Importar Dados**.

![](./imagem2/img102.png)

{{< icon "chevron-right" >}}Em Tipo de Dados, escolha a opção Códigos de Eventos e clique no botão.

![](./imagem2/img103.png)

{{< icon "chevron-right" >}}Selecione o arquivo encontrado e clique no botão.

![](./imagem2/img103.png)

{{< icon "chevron-right" >}}Quando o processo de importação for concluído, será mostrada a confirmação.

![](./imagem2/img104.png)

### Exportação de códigos de erros

{{< icon "chevron-right" >}}Para exportar os códigos de erros da base de dados do STCP OFTP Web Admin para um arquivo xml, acesse **Manutenção → Banco de Dados → Exportar Dados**.

![](./imagem2/img106.png)

{{< icon "chevron-right" >}}Em **Tipo de Dados**, escolha a opção **Códigos de Erros** e clique no botão.

![](./imagem2/img107.png)

{{< icon "chevron-right" >}}Para realizar a exportação dos dados, clique no botão.

![](./imagem2/img108.png)

{{< icon "chevron-right" >}}Quando o processo de exportação for concluído, será mostrada a confirmação.

![](./imagem2/img109.png)

### Exportação de códigos de eventos

{{< icon "chevron-right" >}}Para exportar os códigos de eventos da base de dados do STCP OFTP Web Admin para um arquivo xml, acesse **Manutenção → Banco de Dados → Exportar Dados**.

![](./imagem2/img110.png)

{{< icon "chevron-right" >}}Em Tipo de Dados, escolha a opção Códigos de Eventos e clique no botão.

![](./imagem2/img111.png)

{{< icon "chevron-right" >}}Para realizar a exportação dos dados, clique no botão.

![](./imagem2/img112.png)

{{< icon "chevron-right" >}}Quando o processo de exportação for concluído, será mostrada a confirmação.

![](./imagem2/img113.png)

### Cadastro de códigos de erros

{{< icon "chevron-right" >}}Para cadastrar um código de erro, acesse **Manutenção → Cadastro → Códigos de erros**.

{{< icon "chevron-right" >}}Clique no botão **+**.

![](./imagem2/img114.png)

{{< icon "chevron-right" >}}Preencha os campos: **código, descrição** e **procedimento**.

{{< icon "chevron-right" >}}Selecione a classificação do erro no campo **Classe**.

![](./imagem2/img115.png)

{{< icon "chevron-right" >}}Clique no botão para salvar as informações do código de erro.

### Cadastro de códigos de eventos

{{< icon "chevron-right" >}}Para cadastrar um código de evento, acesse **Manutenção → Cadastro → Códigos de eventos**.

{{< icon "chevron-right" >}}Clique no botão.

![](./imagem2/img116.png)

{{< icon "chevron-right" >}}Preencha os campos: **código, descrição e procedimento**.

![](./imagem2/img117.png)

{{< icon "chevron-right" >}}Clique no botão para salvar as informações do código de evento.

### Modificar senha de operador

{{< icon "chevron-right" >}}Para modificar a senha do operador do STCP OFTP Web Admin, acesse **Manutenção → Modificar senha**.

{{< callout type="info" >}}
  Obs.: este procedimento modifica a senha do operador que está logado na ferramenta.
{{< /callout >}}

![](./imagem2/img118.png)

{{< icon "chevron-right" >}}Preencha os campos: **senha atual, nova senha** e **confirma**.

![](./imagem2/img119.png)

{{< icon "chevron-right" >}}Clique no botão para salvar a nova senha.

### Limpeza de diretório de Usuários (Caixa Postal)

{{< icon "chevron-right" >}}Para realizar a limpeza de diretório de uma caixa postal do STCP OFTP Server, acesse **Manutenção → Usuários (Caixa Postal) → Limpar diretório**.

![](./imagem2/img120.png)

{{< icon "chevron-right" >}}Preencha os campos:

| Campo      | Descrição |
| :-----------: | :-----------: |
| Identificação do usuário  | Nome da caixa postal.       |
| Nome do arquivo   | Nome do arquivo que deseja buscar. Caso queira ver todos os arquivos, deixe este campo em branco. |
| Período considerado   | Refere-se à data de criação do arquivo dentro do diretório especificado.        |
| Diretório   | Selecione o diretório onde deseja fazer a limpeza. As opções disponíveis são: _backup, pendente de envio, pendente de confirmação, recebidos, pendente de restart_.     |
----------

<br>

{{< icon "chevron-right" >}}Clique no botão para realizar a pesquisa no diretório.

![](./imagem2/img121.png)

{{< icon "chevron-right" >}}Selecione os arquivos que deseja remover e clique no botão.

![](./imagem2/img122.png)

{{< icon "chevron-right" >}}Quando o processo de limpeza for concluído, será mostrada a confirmação.

![](./imagem2/img123.png)

### Recuperar transferência de Usuários (Caixa Postal)

{{< icon "chevron-right" >}}Para recuperar uma transferência de uma caixa postal do STCP OFTP Server, acesse **Manutenção → Usuários (Caixa Postal) → Recuperar transferência**.

{{< callout type="info" >}}
  Obs.: este procedimento recupera uma transferência do diretório **Backup** e coloca no diretório **Saída** da caixa postal.
{{< /callout >}}

![](./imagem2/img124.png)

{{< icon "chevron-right" >}}Preencha os campos:

| Campo      | Descrição |
| :-----------: | :-----------: |
| Identificação do usuário  | Nome da caixa postal.       |
| Nome do arquivo   | Nome completo do arquivo que deseja recuperar. |
| Período considerado   | Refere-se à data de criação do arquivo dentro do diretório de backup.        |
----------

<br>

{{< icon "chevron-right" >}}Clique no botão para buscar o arquivo.

![](./imagem2/img125.png)

{{< icon "chevron-right" >}}Selecione o arquivo e clique no botão.

![](./imagem2/img126.png)

{{< icon "chevron-right" >}}Quando o processo de recuperação for concluído, será mostrada a confirmação.

![](./imagem2/img127.png)

### Resetar senha de Usuários (Caixa Postal)

{{< icon "chevron-right" >}}Para resetar a senha de uma caixa postal do STCP OFTP Server, acesse **Manutenção → Usuários (Caixa Postal) → Resetar senha**.

![](./imagem2/img128.png)

{{< icon "chevron-right" >}}Preencha os campos: **usuário (caixa postal), nova senha** e **confirma**.

![](./imagem2/img129.png)

{{< icon "chevron-right" >}}Clique no botão para salvar a nova senha da caixa postal.

### Executar agendamento do STCP OFTP Server

{{< icon "chevron-right" >}}Para executar um agendamento do STCP OFTP Server, acesse **Monitoração → Agendamentos → Executar.**

![](./imagem2/img130.png)

{{< icon "chevron-right" >}}Preencha os campos:

| Campo      | Descrição |
| :-----------: | :-----------: |
| Agendamento | Nome do agendamento que deseja buscar. Caso queira ver todos os agendamentos, deixe este campo em branco.       |
| Descrição   | Descrição do agendamento. Use este campo para filtrar os agendamentos pela descrição. |
----------
<br>

{{< icon "chevron-right" >}}Clique no botão para buscar o agendamento.

![](./imagem2/img131.png)

{{< icon "chevron-right" >}}Clique sobre o nome do agendamento para executá-lo.

![](/imagem2/img132.png)

{{< icon "chevron-right" >}}Será aberta uma nova janela informando o resultado da execução do agendamento.

{{< callout type="info" >}}
  Obs.: se o agendamento estiver desabilitado, não será possível executá-lo.
{{< /callout >}}

![](./imagem2/img133.png)

### Alterar estado de agendamento do STCP OFTP Server

{{< icon "chevron-right" >}}Para alterar o estado de um agendamento do STCP OFTP Server, acesse **Monitoração → Agendamentos → Alterar estado**.

{{< callout type="info" >}}
  Obs.: este procedimento permite que um agendamento seja bloqueado/desbloqueado.
{{< /callout >}}

![](./imagem2/img134.png)

{{< icon "chevron-right" >}}Preencha os campos:

| Campo      | Descrição |
| :-----------: | :-----------: |
| Agendamento | Nome do agendamento que deseja buscar. Caso queira ver todos os agendamentos, deixe este campo em branco.       |
| Descrição   | Descrição do agendamento. Use este campo para filtrar os agendamentos pela descrição. |
----------
<br>

{{< icon "chevron-right" >}}Clique no botão para buscar o agendamento.

![](./imagem2/img135.png)

{{< icon "chevron-right" >}}Clique sobre o nome do agendamento para alterar seu estado.

![](./imagem2/img136.png)

{{< icon "chevron-right" >}}O estado do agendamento é mostrado no lado direito da janela.

![](./imagem2/img137.png)

### Monitorar eventos do servidor

{{< icon "chevron-right" >}}Para visualizar os eventos do servidor de monitoração do STCP OFTP Server, acesse **Monitoração → Servidor → Eventos**.

![](./imagem2/img138.png)

{{< callout type="info" >}}
 A monitoração do servidor permite visualizar, em tempo real, todos os eventos¹ da sessão atual do serviço do STCP OFTP. Esta página é atualizada de tempos em tempos.
{{< /callout >}}

![](./imagem2/img139.png)

> ¹ Início/fim do serviço STCP OFTP, Início/Fim de conexões entrantes/saintes, Início e Término da agenda, Início e Término de transmissão e recepção de arquivos, Erros do sistema/transferência, dentre outros.

### Monitorar transferências

{{< icon "chevron-right" >}}Para monitorar as transferências em andamento, acesse **Monitoração → Servidor → Transferências em andamento.**

![](./imagem2/img140.png)

{{< callout type="info" >}}
 As transferências são monitoradas em tempo real e a página é atualizada de tempos em tempos.
{{< /callout >}}

![](./imagem2/img141.png)

### Iniciar conexão com usuários (Caixa Postal)

{{< icon "chevron-right" >}}Para iniciar uma conexão com uma caixa postal do STCP OFTP Server, acesse **Monitoração → Usuários (Caixa Postal) → Iniciar Conexão**.

{{< callout type="info" >}}
Obs.: esta funcionalidade só está disponível para caixas postais que estejam com a conexão automática habilitada.
{{< /callout >}}

![](./imagem2/img142.png)

{{< icon "chevron-right" >}}Preencha os campos:

| Campo      | Descrição |
| :-----------: | :-----------: |
| Identificação do usuário | Nome da caixa postal. Caso queira ver todas as caixas postais, deixe este campo em branco. |
| Descrição do usuário   | Descrição da caixa postal. Use este campos para filtrar as caixas postais pela descrição. |
----------
<br>

{{< icon "chevron-right" >}}Clique no botão para realizar a busca.

![](./imagem2/img143.png)

{{< icon "chevron-right" >}}Clique sobre o  nome da caixa postal para iniciar a conexão.

![](./imagem2/img144.png)

{{< icon "chevron-right" >}}Será aberta uma nova janela mostrando o resultado da conexão do usuário.

![](./imagem2/img145.png)

### Alterar estado de usuários (Caixa Postal)

{{< icon "chevron-right" >}}Para alterar o estado de uma caixa postal do STCP OFTP Server, acesse **Monitoração → Usuários (Caixa Postal) → Alterar estado**.

{{< callout type="info" >}}
Obs.: este procedimento permite que uma caixa postal seja bloqueada/desbloqueada.
{{< /callout >}}

![](./imagem2/img146.png)

{{< icon "chevron-right" >}}Preencha os campos:

| Campo      | Descrição |
| :-----------: | :-----------: |
| Identificação do usuário | Nome da caixa postal que deseja buscar. Caso queira ver todas as caixas postais, deixe este campo em branco. |
| Descrição do usuário   | Descrição da caixa postal. Use este campos para filtrar as caixas postais pela descrição. |
----------
<br>

{{< icon "chevron-right" >}}Clique no botão para realizar a busca.

![](./imagem2/img147.png)

{{< icon "chevron-right" >}}Clique sobre o noem da caixa postal para alterar seu estado.

![](./imagem2/img148.png)

{{< icon "chevron-right" >}}O estado da caixa postal é mostrado no lado direito da janela.

![](./imagem2/img149.png)

## Glossário

<div class="glossary-section">
  <div class="letter-group">
    <h3>I</h3>
    <p><strong>IUSR</strong> - Conta Interna para acesso anônimo ao Internet Information Service.</p>
  </div>

  <div class="letter-group">
    <h3>S</h3>
    <p><strong>System DSN</strong> - Pode ser usado por alguém que tenha acesso à máquina.</p>
  </div>
</div>

<style>
  .glossary-section {
    font-family: 'Poppins', sans-serif;
    background-color: #f9f9f9;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 20px auto;
  }

  .letter-group {
    margin-bottom: 20px;
  }

  .letter-group h3 {
    font-size: 1.8em;
    color: #333;
    border-bottom: 2px solid #007acc;
    display: inline-block;
    margin-bottom: 10px;
  }

  .letter-group p {
    font-size: 1.1em;
    color: #555;
    margin-left: 20px;
    text-indent: -20px;
    padding-left: 20px;
    line-height: 1.6;
  }

  strong {
    color: #333;
  }
</style>

