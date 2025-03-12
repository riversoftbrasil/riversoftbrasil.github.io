---
linkTitle: Configuração
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 3
prev:
next:
slug: configuracao
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


> [!NOTE] Aviso
> Obs.: As configurações acima podem ser feitas em uma mesma base de dados, ou seja, não é necessário o uso de bases de dados distintas para o funcionamento do STCP OFTP Web Admin.


Verifique nas seção <a href="/stcpwebadmin/iis/">Configuração no IIS</a>, as configurações e procedimentos necessários no IIS para realizar o acesso ao STCP OFTP Web Admin

## Acesso ao STCP OFTP Web Admin

{{< icon "arrow-right-circle" >}}Pelo seu navegador, entre com o endereço do STCP OFTP Web Admin.

![](./imagem2/img65.png)

{{< icon "arrow-right-circle" >}}Digite **stcpadmin** no campo operador e **teste** em senha.

> [!NOTE] Aviso
> Obs.: para o primeiro login na ferramenta, qualquer nome de operador e senha serão aceitos, já que não existe nenhum operador cadastrado.

![](./imagem2/img66.png)

## Cadastro de Administrador do sistema

{{< icon "arrow-right-circle" >}}Acesse **Manutenção → Cadastro → Operadores**.

{{< icon "arrow-right-circle" >}}Clique no botão **+**.

![](./imagem2/img67.png)

{{< icon "arrow-right-circle" >}}Cadastre o administrador do sistema.

> [!NOTE] Aviso
> Obs.: o administrador do sistema deverá ser obrigatoriamente o **stcpadmin**. Este operador não terá restrições de acesso e poderá gerenciar todos os outros operadores.


![](./imagem2/img68.png)

{{< icon "arrow-right-circle" >}}Clique no botão para salvar as informações do administrador do sistema.

{{< icon "arrow-right-circle" >}}Clique em **Sair** para acessar o sistema com o novo nome de operador e a nova senha.

![](./imagem2/img69.png)

## Criação de Grupos

{{< icon "arrow-right-circle" >}}Adicione grupos acessando **Manutenção → Cadastro → Grupos**.

{{< icon "arrow-right-circle" >}}Clique no botão **+**.

![](./imagem2/img70.png)

> [!TIP] Dica
> Obs.: para associar todos os servidores a todos os usuários, utilize \ . Para especificar os usuários relacionados ao servidor, basta separar com uma barra invertida \ . Exemplo: **SERV001\USER001**.

{{< icon "arrow-right-circle" >}}Selecione os operadores e as permissões que farão parte do grupo.

![](./imagem2/img71.png "Preencha os campos: nome, descrição e servidor/usuário")

![](./imagem2/btn.png "Clique no botão para salvar as informações do grupo")

## Cadastro de Operadores

{{< icon "arrow-right-circle" >}}Agora cadastre os operadores que farão parte dos grupos criados.

{{< icon "arrow-right-circle" >}}Acesse **Manutenção → Cadastro → Operadores**.

{{< icon "arrow-right-circle" >}}Clique no botão **+**.

![](./imagem2/img72.png)

{{< icon "arrow-right-circle" >}}Adicione os operadores, incluindo-os nos grupos adequados.

![](./imagem2/img73.png)

![](./imagem2/btn.png "Clique no botão para salvar as informações do operador")

## Cadastro dos Servidores

{{< icon "arrow-right-circle" >}}Adicione grupos acessando **Manutenção → Cadastro → Servidores**.

{{< icon "arrow-right-circle" >}}Clique no botão **+**.

![](./imagem2/img74.png)

{{< icon "arrow-right-circle" >}}Adicione as informações do servidor.

> [!NOTE]
> Obs.: este servidor refere-se ao servidor de monitoração definido no STCP OFTP Server.

![](./imagem2/img75.png)

![](./imagem2/btn.png "Clique no botão para salvar as informações do servidor")

## Funcionalidades

### Consulta aos Agendamentos

{{< icon "arrow-right-circle" >}}Esta funcionalidade permite ao usuário consultar os agendamentos na ferramenta **STCP OFTP Server Enterprise**.

{{< icon "arrow-right-circle" >}}Acesse **Consultas → Cadastro → Agendamentos**.

{{< icon "arrow-right-circle" >}}Informe o nome completo do agendamento no campo **Nome do Agendamento**. Para filtrar os dados da pesquisa, informe também a descrição do agendamento.

{{< icon "arrow-right-circle" >}}Ou clique no botão para visualizar todos os agendamentos.

![](./imagem2/img76.png)

### Consulta aos Códigos de erros

Esta funcionalidade permite ao usuário consultar os **Códigos de erros**.

{{< icon "arrow-right-circle" >}}Acesse **Consultas → Cadastro → Códigos de erros**.

{{< icon "arrow-right-circle" >}}Informe o **Código de erro**. Para filtrar os dados da pesquisa, informe também
a descrição do erro.

![](./imagem2/img77.png "Ou clique na lupa para visualizar todos os códigos de erros conforme imagem abaixo")

![](./imagem2/all-errors.png)

### Consulta aos Códigos de eventos

Esta funcionalidade permite ao usuário consultar os **Códigos de eventos**.

{{< icon "arrow-right-circle" >}}Acesse **Consultas → Cadastro → Códigos de eventos**.

{{< icon "arrow-right-circle" >}}Informe o “Código do evento”. Para filtrar os dados da pesquisa, informe também a descrição do evento.

{{< icon "arrow-right-circle" >}}Ou clique na lupa para visualizar todos os códigos de eventos.

![](./imagem2/img78.png)

### Consulta aos Grupos

Esta funcionalidade permite ao usuário **Consultar os Grupos**.

{{< icon "arrow-right-circle" >}}Acesse **Consultas → Cadastro → Grupos**.

{{< icon "arrow-right-circle" >}}Informe o **Grupo**. Para filtrar os dados da pesquisa, informe também a descrição do grupo.

{{< icon "arrow-right-circle" >}}Ou clique na lupa para visualizar todos os grupos cadastrados.

![](./imagem2/img79.png)

### Consulta aos Operadores

Esta funcionalidade permite ao usuário consultar os **Operadores**.

{{< icon "arrow-right-circle" >}}Acesse **Consultas → Cadastro → Operadores**.

{{< icon "arrow-right-circle" >}}Informe o **Operador**. Para filtrar os dados da pesquisa, informe também a
descrição do operador.

{{< icon "arrow-right-circle" >}}Ou clique na lupa para visualizar todos os operadores cadastrados.

![](./imagem2/img80.png)

### Consulta aos Usuários

Esta funcionalidade permite ao usuário consultar os **Usuários cadastrados**.

{{< icon "arrow-right-circle" >}}Acesse **Consultas → Cadastro → Usuários**.

{{< icon "arrow-right-circle" >}}Informe a **Identificação do usuário**. Para filtrar os dados da pesquisa, informe também a **descrição do usuário**.

{{< icon "arrow-right-circle" >}}Ou clique na lupa para visualizar todos os usuários cadastrados.

![](./imagem2/img81.png)

### Histórico das Transferências

Esta funcionalidade permite ao usuário consultar o **Histórico das Transferências**.

{{< icon "arrow-right-circle" >}}Para consultar o histórico das transferências, acesse **Consultas → Transferências → Histórico**.

{{< icon "arrow-right-circle" >}}Informe a **Identificação do usuário** e o **Nome do arquivo**.

{{< icon "arrow-right-circle" >}}Selecione o **Período considerado** e a **Situação** (Todas, Recebidas/OK, Enviadas/OK, Falha Rx ou Falha Tx).

{{< icon "arrow-right-circle" >}}Ou clique na lupa para visualizar todo o histórico das transferências.

![](./imagem2/img82.png)

### Transferências Pendentes

Esta funcionalidade permite ao usuário consultar as **Transferências Pendentes**.

{{< icon "arrow-right-circle" >}}Acesse **Consultas → Transferências → Pendentes**.

{{< icon "arrow-right-circle" >}}Informe o **Usuário**. Para filtrar os dados da pesquisa, informe também a descrição do usuário.

{{< icon "arrow-right-circle" >}}Selecione o **Período considerado** e a **Situação** (Pend envio, Pend conf, Pend restart ou Pend tratamento).

{{< icon "arrow-right-circle" >}}Ou clique no botão para visualizar todas as transferências pendentes.

![](./imagem2/img83.png)

### Relatório de Eventos de Operadores

Esta funcionalidade permite ao usuário consultar o relatório de eventos de operadores organizados por Data/Hora ou pelo operador, em ordem crescente. Os eventos listados no relatório são referentes ao início/fim de sessão, alteração de parâmetros e demais ações realizadas pelos operadores no STCP OFTP Web Admin.

{{< icon "arrow-right-circle" >}}Acesse **Relatórios → Eventos → Operadores**.

{{< icon "arrow-right-circle" >}}Informe a **Identificação do Operador**. Para pesquisa avançada, digite no campo “Pesquisa Avançada” parte do texto do arquivo.

{{< icon "arrow-right-circle" >}}Selecione o **Período considerado**, e DataHora ou Operador em **Ordenado por**.

![](./imagem2/img84.png)

{{< icon "arrow-right-circle" >}}Ou clique na lupa para visualizar todos os eventos.

![](./imagem2/img85.png)

### Relatório de Eventos do Sistema

Esta funcionalidade permite ao usuário consultar o relatório de eventos do Sistema organizado por Data/Hora ou módulo, em ordem crescente. Os eventos listados no relatório podem ser: início/fim do serviço STCP OFTP, início/fim de conexões entrantes ou saintes, início e término da agenda, início e término de transmissão e recepção de arquivos, erros do sistema/transferência etc.

{{< icon "arrow-right-circle" >}}Acesse **Relatórios → Eventos → Sistema**.

{{< icon "arrow-right-circle" >}}Informe a **Identificação do Módulo**. Para pesquisa avançada, digite no campo “Pesquisa Avançada” o módulo do sistema onde ocorreu o evento. Exemplo: STCP, STCPMON, STCPCONF, etc.

{{< icon "arrow-right-circle" >}}Selecione o **Período considerado**, e DataHora ou Módulo em **Ordenado por**.

![](./imagem2/img86.png)

{{< icon "arrow-right-circle" >}}Ou clique na lupa para visualizar todos os eventos conforme a imagem de exemplo abaixo: 

![](./imagem2/img87.png)

### Relatório de Eventos dos Usuários

Esta funcionalidade permite ao usuário consultar o relatório de eventos dos usuários organizados por Data/Hora ou usuário, em ordem crescente. Os eventos listados no relatório podem ser: início/fim de conexões entrantes ou saintes, início e término de transmissão e recepção de arquivos, erros na transferência do usuário, dentre outros.

{{< icon "arrow-right-circle" >}}Acesse **Relatórios → Eventos → Usuários (Caixa Postal)**.

{{< icon "arrow-right-circle" >}}Informe a **Identificação do Usuário**. Para pesquisa avançada, digite no campo “**Pesquisa Avançada**” parte do texto do arquivo.

{{< icon "arrow-right-circle" >}}Selecione o **Período considerado**, e DataHora ou Usuário em “Ordenado por”.

![](./imagem2/img88.png)

{{< icon "arrow-right-circle" >}}Ou clique na lupa para visualizar todos os eventos conforme a imagem de exemplo abaixo: 

![](./imagem2/img89.png)

### Relatório - Auditoria das transferências

Esta funcionalidade permite ao usuário consultar o relatório das transferências organizado por Data/Hora ou usuário, em ordem crescente.

{{< icon "arrow-right-circle" >}}Acesse **Relatórios** → **Transferências** → **Auditoria**.

{{< icon "arrow-right-circle" >}}Informe a **Identificação do Usuário**. Para pesquisa avançada, digite no campo **Pesquisa Avançada** parte do texto do arquivo.

{{< icon "arrow-right-circle" >}}Selecione o **Período considerado**, e DataHora ou Usuário em **Ordenado por**.

![](./imagem2/img90.png)

{{< icon "arrow-right-circle" >}}Ou clique na lupa para visualizar a auditoria de todas as transferências.

![](./imagem2/img91.png)

### Relatório - Estatísticas das transferências

Esta funcionalidade permite ao usuário consultar o relatório de estatística das transferências organizado por tipo.

{{< icon "arrow-right-circle" >}}Acesse **Relatórios → Transferências → Estatísticas**.

{{< icon "arrow-right-circle" >}}Informe a **Identificação do usuário**. Para filtrar os dados da pesquisa, informe o **Nome do arquivo**.

{{< icon "arrow-right-circle" >}}Selecione o **Período considerado**, e o **Tipo** de relatório (consolidado, anual, mensal, semanal, dia da semana, Diário ou por hora).

![](./imagem2/img92.png)

{{< icon "arrow-right-circle" >}}Ou clique na lupa para visualizar a estatística de todas as transferências.

![](./imagem2/img93.png)

### Relatório - Gráficos das transferências

Esta funcionalidade permite ao usuário visualizar o gráfico das transferências organizado por tipo.

Acesse **Relatórios → Transferências → Gráficos**.

{{< icon "arrow-right-circle" >}}Informe a **Identificação do usuário**. Para filtrar os dados da pesquisa, informe o **Nome do arquivo**.

{{< icon "arrow-right-circle" >}}Selecione o **Período considerado**, e o **Tipo** de relatório (consolidado, anual, mensal, semanal, dia da semana, Diário ou por hora).

{{< icon "arrow-right-circle" >}}Escolha a forma como será apresentado o gráfico.

{{< icon "arrow-right-circle" >}}Ou clique no botão para visualizar o gráfico de todas as transferências.

![](./imagem2/img94.png)

### Relatório – Roteamentos

{{< icon "arrow-right-circle" >}}Acesse **Relatórios → Roteamentos → Auditoria**.
A pesquisa pode ser feita informando a **Identificação da origem**, por exemplo, que é o nome de usuário.

```
Exemplo: O005RIVERSOFT.
```

![](./imagem2/img95.png)

{{< icon "arrow-right-circle" >}}Ou informe a **Identificação do destino**.

```
Exemplo: SRSVM-T02.
```

![](./imagem2/img96.png)

{{< icon "arrow-right-circle" >}}Para visualizar todos os relatórios, clique na lupa.

![](./imagem2/img97.png)

### Importação de códigos de erros

{{< icon "arrow-right-circle" >}}Para importar os códigos de erros de um arquivo xml para o banco de dados do STCP OFTP Web Admin, acesse **Manutenção → Banco de Dados → Importar Dados**.

![](./imagem2/img98.png)

{{< icon "arrow-right-circle" >}}Em **Tipo de Dados**, escolha a opção **Códigos de Erros** e clique no botão.

![](./imagem2/img99.png)

{{< icon "arrow-right-circle" >}}Selecione o arquivo encontrado e clique no botão.

![](./imagem2/img100.png)

<!-- {{< icon "arrow-right-circle" >}}Quando o processo de importação for concluído, será mostrada a confirmação.

![](./imagem2/img101.png) -->

### Importação de códigos de eventos

{{< icon "arrow-right-circle" >}}Para importar os códigos de eventos de um arquivo xml para o banco de dados da STCP OFTP Web Admin, acesse **Manutenção → Banco de Dados → Importar Dados**.

![](./imagem2/img98.png)

{{< icon "arrow-right-circle" >}}Em Tipo de Dados, escolha a opção Códigos de Eventos e clique no botão.

{{< icon "arrow-right-circle" >}}Selecione o arquivo encontrado e clique no botão.

![](./imagem2/img103.png)

{{< icon "arrow-right-circle" >}}Quando o processo de importação for concluído, será mostrada a confirmação.

![](./imagem2/img104.png)

### Exportação de códigos de erros

{{< icon "arrow-right-circle" >}}Para exportar os códigos de erros da base de dados do STCP OFTP Web Admin para um arquivo xml, acesse **Manutenção → Banco de Dados → Exportar Dados**.

![](./imagem2/img106.png)

{{< icon "arrow-right-circle" >}}Em **Tipo de Dados**, escolha a opção **Códigos de Erros** e clique no botão.

![](./imagem2/img107.png)

{{< icon "arrow-right-circle" >}}Para realizar a exportação dos dados, clique no botão.

![](./imagem2/img108.png)

{{< icon "arrow-right-circle" >}}Quando o processo de exportação for concluído, será mostrada a confirmação.

![](./imagem2/img109.png)

### Exportação de códigos de eventos

{{< icon "arrow-right-circle" >}}Para exportar os códigos de eventos da base de dados do STCP OFTP Web Admin para um arquivo xml, acesse **Manutenção → Banco de Dados → Exportar Dados**.

![](./imagem2/img110.png)

{{< icon "arrow-right-circle" >}}Em Tipo de Dados, escolha a opção Códigos de Eventos e clique no botão.

![](./imagem2/img111.png)

{{< icon "arrow-right-circle" >}}Para realizar a exportação dos dados, clique no botão.

![](./imagem2/img112.png)

{{< icon "arrow-right-circle" >}}Quando o processo de exportação for concluído, será mostrada a confirmação.

![](./imagem2/img113.png)

### Cadastro de códigos de erros

{{< icon "arrow-right-circle" >}}Para cadastrar um código de erro, acesse **Manutenção → Cadastro → Códigos de erros**.

{{< icon "arrow-right-circle" >}}Clique no botão **+**.

![](./imagem2/img114.png)

{{< icon "arrow-right-circle" >}}Preencha os campos: **código, descrição** e **procedimento**.

{{< icon "arrow-right-circle" >}}Selecione a classificação do erro no campo **Classe**.

![](./imagem2/img115.png)

{{< icon "arrow-right-circle" >}}Clique no botão para salvar as informações do código de erro.

### Cadastro de códigos de eventos

{{< icon "arrow-right-circle" >}}Para cadastrar um código de evento, acesse **Manutenção → Cadastro → Códigos de eventos**.

{{< icon "arrow-right-circle" >}}Clique no botão.

![](./imagem2/img116.png)

{{< icon "arrow-right-circle" >}}Preencha os campos: **código, descrição e procedimento**.

![](./imagem2/img117.png)

{{< icon "arrow-right-circle" >}}Clique no botão para salvar as informações do código de evento.

### Modificar senha de operador

{{< icon "arrow-right-circle" >}}Para modificar a senha do operador do STCP OFTP Web Admin, acesse **Manutenção → Modificar senha**.

> [!NOTE]
> Obs.: este procedimento modifica a senha do operador que está logado na ferramenta.

![](./imagem2/img118.png)

{{< icon "arrow-right-circle" >}}Preencha os campos: **senha atual, nova senha** e **confirma**.

![](./imagem2/img119.png)

{{< icon "arrow-right-circle" >}}Clique no botão para salvar a nova senha.

### Limpeza de diretório de Usuários (Caixa Postal)

{{< icon "arrow-right-circle" >}}Para realizar a limpeza de diretório de uma caixa postal do STCP OFTP Server, acesse **Manutenção → Usuários (Caixa Postal) → Limpar diretório**.

![](./imagem2/img120.png)

{{< icon "arrow-right-circle" >}}Preencha os campos:

|          Campo           |                                                                              Descrição                                                                              |
| :----------------------: | :-----------------------------------------------------------------------------------------------------------------------------------------------------------------: |
| Identificação do usuário |                                                                        Nome da caixa postal.                                                                        |
|     Nome do arquivo      |                                  Nome do arquivo que deseja buscar. Caso queira ver todos os arquivos, deixe este campo em branco.                                  |
|   Período considerado    |                                              Refere-se à data de criação do arquivo dentro do diretório especificado.                                               |
|        Diretório         | Selecione o diretório onde deseja fazer a limpeza. As opções disponíveis são: _backup, pendente de envio, pendente de confirmação, recebidos, pendente de restart_. |
----------

<br>

{{< icon "arrow-right-circle" >}}Clique no botão para realizar a pesquisa no diretório.

![](./imagem2/img121.png)

{{< icon "arrow-right-circle" >}}Selecione os arquivos que deseja remover e salve.

<!-- ![](./imagem2/img122.png) -->

{{< icon "arrow-right-circle" >}}Quando o processo de limpeza for concluído, será mostrada a confirmação.

<!-- ![](./imagem2/img123.png) -->

### Recuperar transferência de Usuários (Caixa Postal)

{{< icon "arrow-right-circle" >}}Para recuperar uma transferência de uma caixa postal do STCP OFTP Server, acesse **Manutenção → Usuários (Caixa Postal) → Recuperar transferência**.

> [!NOTE] Aviso
> Obs.: este procedimento recupera uma transferência do diretório **Backup** e coloca no diretório **Saída** da caixa postal.

![](./imagem2/img124.png)

{{< icon "arrow-right-circle" >}}Preencha os campos:

|          Campo           |                               Descrição                               |
| :----------------------: | :-------------------------------------------------------------------: |
| Identificação do usuário |                         Nome da caixa postal.                         |
|     Nome do arquivo      |            Nome completo do arquivo que deseja recuperar.             |
|   Período considerado    | Refere-se à data de criação do arquivo dentro do diretório de backup. |
----------

<br>

{{< icon "arrow-right-circle" >}}Clique no botão para buscar o arquivo.

![](./imagem2/img125.png)

{{< icon "arrow-right-circle" >}}Selecione o arquivo.

<!-- ![](./imagem2/img126.png) -->

{{< icon "arrow-right-circle" >}}Quando o processo de recuperação for concluído, será mostrada a confirmação.

<!-- ![](./imagem2/img127.png) -->

### Resetar senha de Usuários (Caixa Postal)

{{< icon "arrow-right-circle" >}}Para resetar a senha de uma caixa postal do STCP OFTP Server, acesse **Manutenção → Usuários (Caixa Postal) → Resetar senha**.

![](./imagem2/img128.png)

{{< icon "arrow-right-circle" >}}Preencha os campos: **usuário (caixa postal), nova senha** e **confirma**.

![](./imagem2/img129.png)

{{< icon "arrow-right-circle" >}}Clique no botão para salvar a nova senha da caixa postal.

### Executar agendamento do STCP OFTP Server

{{< icon "arrow-right-circle" >}}Para executar um agendamento do STCP OFTP Server, acesse **Monitoração → Agendamentos → Executar.**

![](./imagem2/img130.png)

{{< icon "arrow-right-circle" >}}Preencha os campos:

|    Campo    |                                                 Descrição                                                 |
| :---------: | :-------------------------------------------------------------------------------------------------------: |
| Agendamento | Nome do agendamento que deseja buscar. Caso queira ver todos os agendamentos, deixe este campo em branco. |
|  Descrição  |           Descrição do agendamento. Use este campo para filtrar os agendamentos pela descrição.           |
----------
<br>

{{< icon "arrow-right-circle" >}}Clique na lupa para buscar o agendamento.

![](./imagem2/img131.png)

{{< icon "arrow-right-circle" >}}Clique sobre o nome do agendamento para executá-lo.

<!-- ![](./imagem2/img132.png) -->

{{< icon "arrow-right-circle" >}}Será aberta uma nova janela informando o resultado da execução do agendamento.

> [!NOTE] Aviso
> Obs.: se o agendamento estiver desabilitado, não será possível executá-lo.

<!-- ![](./imagem2/img133.png) -->

### Alterar estado de agendamento do STCP OFTP Server

{{< icon "arrow-right-circle" >}}Para alterar o estado de um agendamento do STCP OFTP Server, acesse **Monitoração → Agendamentos → Alterar estado**.

> [!NOTE] Aviso
> Obs.: este procedimento permite que um agendamento seja bloqueado/desbloqueado.


![](./imagem2/img134.png)

{{< icon "arrow-right-circle" >}}Preencha os campos:

|    Campo    |                                                 Descrição                                                 |
| :---------: | :-------------------------------------------------------------------------------------------------------: |
| Agendamento | Nome do agendamento que deseja buscar. Caso queira ver todos os agendamentos, deixe este campo em branco. |
|  Descrição  |           Descrição do agendamento. Use este campo para filtrar os agendamentos pela descrição.           |
----------
<br>

{{< icon "arrow-right-circle" >}}Clique na lupa para buscar o agendamento.

![](./imagem2/img135.png)

{{< icon "arrow-right-circle" >}}Clique sobre o nome do agendamento para alterar seu estado.

<!-- ![](./imagem2/img136.png) -->

{{< icon "arrow-right-circle" >}}O estado do agendamento é mostrado no lado direito da janela.

<!-- ![](./imagem2/img137.png) -->

### Monitorar eventos do servidor

{{< icon "arrow-right-circle" >}}Para visualizar os eventos do servidor de monitoração do STCP OFTP Server, acesse **Monitoração → Servidor → Eventos**.

![](./imagem2/img138.png)

> [!NOTE]
> A monitoração do servidor permite visualizar, em tempo real, todos os eventos[1] da sessão atual do serviço do STCP OFTP. Esta página é atualizada de tempos em tempos.

![](./imagem2/img139_1.png)
![](./imagem2/img139_2.png)

> ¹ Início/fim do serviço STCP OFTP, Início/Fim de conexões entrantes/saintes, Início e Término da agenda, Início e Término de transmissão e recepção de arquivos, Erros do sistema/transferência, dentre outros.

### Monitorar transferências

{{< icon "arrow-right-circle" >}}Para monitorar as transferências em andamento, acesse **Monitoração → Servidor → Transferências em andamento.**

![](./imagem2/img140.png)

> [!NOTE] Aviso
> As transferências são monitoradas em tempo real e a página é atualizada de tempos em tempos.

![](./imagem2/img141.png)

### Iniciar conexão com usuários (Caixa Postal)

{{< icon "arrow-right-circle" >}}Para iniciar uma conexão com uma caixa postal do STCP OFTP Server, acesse **Monitoração → Usuários (Caixa Postal) → Iniciar Conexão**.

> [!NOTE] Aviso
> Obs.: esta funcionalidade só está disponível para caixas postais que estejam com a conexão automática habilitada.

![](./imagem2/img142.png)

{{< icon "arrow-right-circle" >}}Preencha os campos:

|          Campo           |                                         Descrição                                          |
| :----------------------: | :----------------------------------------------------------------------------------------: |
| Identificação do usuário | Nome da caixa postal. Caso queira ver todas as caixas postais, deixe este campo em branco. |
|   Descrição do usuário   | Descrição da caixa postal. Use este campos para filtrar as caixas postais pela descrição.  |
----------
<br>

{{< icon "arrow-right-circle" >}}Clique na lupa para realizar a busca.

![](./imagem2/img143.png)

{{< icon "arrow-right-circle" >}}Clique sobre o  nome da caixa postal para iniciar a conexão.

![](./imagem2/img144.png)

{{< icon "arrow-right-circle" >}}Será aberta uma nova janela mostrando o resultado da conexão do usuário.

![](./imagem2/img145.png)

### Cancelar conexão com usuários (Caixa Postal)

{{< icon "arrow-right-circle" >}}Para cancelar uma conexão com uma caixa postal do STCP OFTP Server, acesse **Monitoração → Usuários (Caixa Postal) → Cancelar Conexão**.

> [!NOTE] Aviso
> Obs.: esta funcionalidade só está disponível para caixas postais que estejam com a conexão automática habilitada.

![](./imagem2/img150.png)

{{< icon "arrow-right-circle" >}}Preencha os campos:

|          Campo           |                                         Descrição                                          |
| :----------------------: | :----------------------------------------------------------------------------------------: |
| Identificação do usuário | Nome da caixa postal. Caso queira ver todas as caixas postais, deixe este campo em branco. |
|   Descrição do usuário   | Descrição da caixa postal. Use este campos para filtrar as caixas postais pela descrição.  |
----------
<br>

{{< icon "arrow-right-circle" >}}Clique na lupa para realizar a busca.

{{< icon "arrow-right-circle" >}}Clique sobre o  nome da caixa postal para cancelar a conexão.

![](./imagem2/img151.png)

{{< icon "arrow-right-circle" >}}Será aberta uma nova janela mostrando o resultado do cancelamento da conexão do usuário.

<!-- ![](./imagem2/img145.png) -->

### Alterar estado de usuários (Caixa Postal)

{{< icon "arrow-right-circle" >}}Para alterar o estado de uma caixa postal do STCP OFTP Server, acesse **Monitoração → Usuários (Caixa Postal) → Alterar estado**.

> [!NOTE] Aviso
> Obs.: este procedimento permite que uma caixa postal seja bloqueada/desbloqueada.

![](./imagem2/img146.png)

{{< icon "arrow-right-circle" >}}Preencha os campos:

|          Campo           |                                                  Descrição                                                   |
| :----------------------: | :----------------------------------------------------------------------------------------------------------: |
| Identificação do usuário | Nome da caixa postal que deseja buscar. Caso queira ver todas as caixas postais, deixe este campo em branco. |
|   Descrição do usuário   |          Descrição da caixa postal. Use este campos para filtrar as caixas postais pela descrição.           |
----------
<br>

{{< icon "arrow-right-circle" >}}Clique na lupa realizar a busca.

![](./imagem2/img147.png)

{{< icon "arrow-right-circle" >}}Clique sobre o nome da caixa postal para alterar seu estado.

![](./imagem2/img148.png)

{{< icon "arrow-right-circle" >}}O estado da caixa postal é mostrado no lado direito da janela.

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

