---
linkTitle: Utilização
title:
excludeSearch: true
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 3
prev:
next:
slug: use-apigeminiserver
draft:
lastmod: 2024-06-21
---
## Inicialização da API como aplicação

Para inicializar a API como uma aplicação, basta utilizar o comando stcprestapi e informar uma das flags a seguir:

| Flag      | Descrição | Comando |
| ----------- | ----------- | ----------- |
| -ns | Incialização sem SSL stcprestapi | -ns      |
| -c   | Inicialização passando um arquivo de certificado | stcprestapi  -c <CERT_FILE>   |
| -k   | Inicialização passando um arquivo de chave | stcprestapi -k <KEY_FILE>   |

> AVISO: É obrigatório que se utilize uma das flags descritas.

Também é possível utilizar a flag opcional (-p) juntamente com qualquer um dos parâmetros descritos acima, para informar a porta em que a API será inicializada.

Exemplo de uso:

```bash
/usr/local/stcpgemini-api/stcprestapi -ns -p 4231
```

## Inicialização da API como serviço

Para inicializar a API como serviço, utilize o comando a seguir:

```bash
systemctl start stcpgemini-api
```

### Verificação de status do serviço

Para verificar se o serviço está funcionando corretamente, após incializar a API, utilize o comando:

```bash
systemctl status stcpgemini-api
```

### Exemplo de inicialização da API como serviço

```bash
$[root@SRS00HOM1L configs] systemctl start stcpgemini-api
$[root@SRS00HOM1L configs] systemctl status stcpgemini-api
● stcpgemini-api.service - STCP Gemini REST API Server
 Loaded: loaded (/usr/local/stcpgeminiapi/configs/stcpgemini-api.service; linked; vendor preset:
disabled)
 Active: active (running) since Wed 2020-03-11 15:29:54 -03; 26min ago
 Main PID: 1896 (stcprestapi)
 CGroup: /system.slice/stcpgemini-api.service
 └─1896 /usr/local/stcpgeminiapi/stcprestapi -ns -p 8094 --lite
Mar 11 11:36:11 SRSVMDEV2C7.intranet.riversoft.com.br node[7365]: [3/11/2020 11:36:11 AM] STCP Core
configuration database: STCPCFG_DB
Mar 11 11:36:11 SRSVMDEV2C7.intranet.riversoft.com.br node[7365]: [3/11/2020 11:36:11 AM] STCP Log
configuration host: 192.168.0.222
Mar 11 11:36:11 SRSVMDEV2C7.intranet.riversoft.com.br node[7365]: [3/11/2020 11:36:11 AM] STCP Log
configuration database: STCPLOG_DB
Mar 11 11:36:13 SRSVMDEV2C7.intranet.riversoft.com.br node[7365]: [3/11/2020 11:36:13 AM] Starting
Config Database Connection Test
Mar 11 11:36:13 SRSVMDEV2C7.intranet.riversoft.com.br node[7365]: [130B blob data]
Mar 11 11:36:13 SRSVMDEV2C7.intranet.riversoft.com.br node[7365]: [3/11/2020 11:36:13 AM] Starting
Log Database Connection Test
Mar 11 11:36:13 SRSVMDEV2C7.intranet.riversoft.com.br node[7365]: [124B blob data]
Mar 11 11:36:13 SRSVMDEV2C7.intranet.riversoft.com.br node[7365]: [3/11/2020 11:36:13 AM] STCP
Portal Web running on lite mode
Mar 11 11:36:13 SRSVMDEV2C7.intranet.riversoft.com.br node[7365]: [3/11/2020 11:36:13 AM] Make sure
that portal/app/ is located under STCP RestAPI directory
Mar 11 11:36:13 SRSVMDEV2C7.intranet.riversoft.com.br node[7365]: [3/11/2020 11:36:13 AM]
<STCPRestAPI> listening on port 8094

```

### Funcionamento básico de uma API

**Características das Requisições**

Como mencionado anteriormente, o serviço faz uso da metodologia REST. Assim, a requisição feita ao STCP Gemini API é composta
por 4 elementos:

*Método HTTP:*
Aqui é definido qual ação o módulo tomará, sendo: GET para recuperar registros, POST para criar novos registros, PUT para atualizar
registros existentes e o DELETE para remover registros existentes.

*Token Oauth2/Password:*
Neste modelo um usuário gera tokens de acesso, que podem ter o nível de acesso a recursos restringido. Assim, são utilizadas
credenciais do cliente (usuário e password) para geração de um token e o token para acessar/utilizar os recursos do serviço.

*Corpo da mensagem:*
Este elemento é obrigatório para Recuperação, Criação, Edição e Remoção de registros, pois é aqui que serão enviadas as
informações de configuração do STCP. No caso da função de Busca (GET), este elemento trará as informações encontradas no banco.

*URI API:*
São os rotas que indicarão para o módulo qual o tipo de registro será manipulado.

### Tipos de Requisição

Neste tópico são listadas as requisições existentes no sistema que possibilitam ao Usuário realizar as diversas funcionalidades da API.
Essas requisições são:

**Oauth2**

O usuário faz a requisição de token adicionando as seguintes informações à requisição HTTP POST no endpoint /oauth/token:

```
Header: Content-Type: application/x-www-form-urlencoded
Corpo: grant_type=password&username=[usuario]&password=[senha]
```

Atualmente a resposta da requisição de um token conta com 2 parâmetros adicionais: **operator** e **scope**.

{{< callout type="info" >}}
NOTA: **Scope** representa o escopo de permissões que aquele token possui. Já o **operator** são as informações do
operador que fez a requisição, sem a informação da senha.
{{< /callout >}}

```
Request POST /oauth/token HTTP/1.1 Host: 1.2.3.4:5678 Content-Type: application/x-wwwform-urlencoded
grant_type=password&username=teste&password=teste123
```

```
{
"access_token": "ed3799b1d5f6ff6a7204fe36a3000ac6bfb1ed91a96111ee5d0d6c4d6f494616",
"token_type": "Bearer",
"scope":"{\"stcpcore\":
{\"instance\":0,\"service\":0,\"schedule\":0,\"user\":0,\"filetype\":0,\"filetypeglobal\":
0},\"stcpad min\": {\"operator\":0,\"group\":0,\"oper_group\":0,\"error_event\":0,\"logtransfer\":0,\"logmessage\":0,\" logsystem\":0,\"setting\":0},\"stcpmon\":{},\"stcpauth\": {\"reset_hash\":1,\"reset_password\":1,\"reset_lock\":1,\"check_status\":1,\"change_password\":1},\" stcpadminsvc\": {\"query_inst_sched\":1,\"query_inst_users\":1,\"query_reg_inst\":1\"query_reg_serv\":1,\"query_reg_cod_err\":1,\"query_reg_cod_evt\":1,\"query_reg_group\":1,\"query_reg_oper\":1,\"query_rest_api\":1,\"report_evt_inst\":1,\"report_evt_oper\":1,\"report_evt_sys\":1,\"report_evt_user\":1,\"report_freq_conn\":1,\"report_freq_transf\":1,\"report_transf_audit\":1,\"report_transf_stat\":1\"report_transf_graph\":1,\"report_transf_hist\":1,\"report_transf_route\":1,\"mon_sched_exec\":1,\"mon_inst_restart\":1,\"mon_inst_info\":1,\"mon_inst_serv\":1,\"mon_user_start_conn\":1,\"mon_user_canc_conn\":1,\"mon_user_info\":1,\"mon_console_info\":1,\"main_set_level\":1,\"main_sched_ch_state\":1,\"main_oper_reset_pwd\":1\"main_user_ch_state\":1,\"main_user_reset_pwd\":1,\"main_user_reset_hash\":1,\"main_user_create_folders\
":1}}\",\"operator\": \"{\"ID\":1,\"NAME\":\"Teste\",\"DESCRIPTION\":\"Operador principal da ferramenta\",\"CONFIG_TXT\":{\"Entity\": {\"Name\":\"operator\",\"Version\":2},\"Operator\": {\"IdOperador\":1,\"Nome\":\"teste\",\"NomeCompleto\":\"Teste\",\"Descricao\":\"Operador principal da aplicacao\",\"Email\":\"a@a\",\"Senha\":\"\",\"CodServerUlt\":\"\",\"DataUltimoAcesso\":\"
\",\"EnderecoIPUltimoAcesso\":\"\",\"Estado\":1,\"IntervaloMonitoracao\":30,\"LinhasPorPagina\":25,\"TempoInatividade\":3000,\"Tipo\":0,\"LoginFails\":0,\"Expiration\":3600},\"Relations\":{\"Groups\":[1]}},\"EXTRA_TXT\":\"\",\"CREATED\":\"2017-02-10T15:50:07.000Z\",\"MODIFIED\":\"2018-11-30T13:31:27.000Z\"}",
}
```

**access_token**: Token que deverá ser utilizado nas futuras requisições da API.
<br>**Expiration**: Tempo de vida em segundos, após isso uma nova token deverá ser requisitada. Novos parâmetros podem ser inseridos futuramente.

{{< callout type="info" >}}
NOTA: Caso o pedido falhe e o usuário não consiga ser autenticado, ou estejam faltando cabeçalhos no request, o serviço
retornará um Status Code 401 e a seguinte resposta:
{{< /callout >}}

```
{ "error": "[tipo de erro]" }
```

### Request de Recursos

As requisições da API dão controle total sobre as funcionalidades de configuração dos recursos utilizados pelo STCP Gemini. Para acessar os recursos, basta possuir um token válido. As requisições seguem um modelo CRUD, sendo divididas da seguinte forma:

<br>

<style>
  table {
    width: 100%;
    border-collapse: collapse;
  }
  th, td {
    padding: 10px;
    text-align: left;
  }
  .badge {
    display: inline-block;
    border-radius: 20px;
    color: white;
    padding: 5px 20px;
    text-align: center;
    letter-spacing: 1px;
  }
  .post { background-color: #5E4DB2; }
  .get { background-color: #216E4E; }
  .update { background-color: #0155CC; }
  .delete { background-color: #AE2A18; }
    </style>
  
  <table>
        <tr>
            <th><div class="badge post">POST</div></th>
            <td>Utilizado em requests de criação.</td>
        </tr>
        <tr>
            <th><div class="badge get">GET</div></th>
            <td>Utilizado em requests de recuperação de informação.</td>
        </tr>
        <tr>
            <th><div class="badge update">UPDATE</div></th>
            <td>Utilizado também como <b>PUT/PATCH</b>, são requests de atualização de informação.</td>
        </tr>
        <tr>
            <th><div class="badge delete">DELETE</div></th>
            <td>Utilizado em requests de remoção de informação.</td>
        </tr>
    </table>

<br>

> Com exceção do método GET, todas as requisições devem conter um corpo determinado pelo template do serviço da API.

### Corpo da requisição

Com exceção do método GET, todas as requisições devem conter um corpo determinado pelo template do serviço da API.

Authorization **OBRIGATÓRIO**. Neste campo obrigatoriamente deve ser fomatado como:

```
"Authorization: Bearer <token>"
POST /stcpcfg/instances HTTP/1.1 Host: 1.2.3.4:5678 Authorization: Bearer 2YotnFZFEjr1zCsicMWpAA
Content-Type: application/json
```

## STCPCore Entry Points

<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #216E4E;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">GET</h5>
</div>

<div class="response-container">
  <div class="response-message">
    Obter lista de instâncias cadastradas no servidor
  </div>


  ```
  /stcpcore/instances?search=reduced
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| Lista de Instâncias      | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #216E4E;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">GET</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Obter instância especificada pelo {id}
  </div>


  ```
  /stcpcore/instances/id/{id}?search=reduced
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| Instância    | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #216E4E;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">GET</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Obter lista de usuários cadastrados na instância {id_i}
  </div>


  ```
  /stcpcore/instances/id/{id_i}/users?search=reduced
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| Lista de Usuários | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #216E4E;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">GET</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Obter usuário específico pelo {id_u} para a instância {id_i}
  </div>


  ```
  /stcpcore/instances/id/{id_i}/users/id/{id_u}?search=reduced
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| Usuário    | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #216E4E;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">GET</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Obter usuário especificado pelo {name_u} para a instância {id_i}
  </div>


  ```
 /stcpcore/instances/id/{id_i}/users/name/{name_u}?search=reduced
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| Usuário    | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #216E4E;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">GET</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Obter lista de serviços de rede cadastrados na instância {id_i}
  </div>


  ```
  /stcpcore/instances/id/{id_i}/services?search=reduced
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| Lista de Serviços | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #216E4E;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">GET</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Obter serviço especificado pelo {id_s} para a instância {id_i}
  </div>


  ```
  /stcpcore/instances/id/{id_i}/services/id/{id_s}?search=reduced
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| Serviço |  Sim   |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #216E4E;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">GET</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Obter lista de agendamentos cadastrados na instância {id_i}
  </div>


  ```
 /stcpcore/instances/id/{id_i}/schedules?search=reduced
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| Lista de agendamentos  | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #216E4E;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">GET</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Obter agendamento especificado pelo {id_s} para a instância {id_i}
  </div>


  ```
  /stcpcore/instances/id/{id_i}/schedules/id/{id_s}?search=reduced
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| Agendamento | Sim       |

</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #216E4E;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">GET</h5>
</div>

<div class="response-container">
  <div class="response-message">
 Obter lista de tipos de arquivos globais cadastrados na instância {id_i}
  </div>


  ```
  /stcpcore/instances/id/{id_i}/ftypesglobal?search=reduced
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| Lista de tipos de arquivos globais | Sim       |
</div>

<br>
<br>


<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #216E4E;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">GET</h5>
</div>

<div class="response-container">
  <div class="response-message">
Obter tipo de arquivo global específico pelo {id_ftg} para a instância {id_i}
  </div>

  ```
  /stcpcore/instances/id/{id_i}/ftypesglobal/id/{id_ftg}?search=reduced
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| Tipos de arquivo global | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #216E4E;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">GET</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Obter tipo de arquivo global específico pelo {name_ftg} para a instância {id_i}
  </div>

  ```
  /stcpcore/instances/id/{id_i}/ftypesglobal/name/{name_ftg}?search=reduced
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| Tipo de arquivo global | Sim       |

</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #216E4E;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">GET</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Obter lista de tipos de arquivos cadastrados para usuário {id_u} na instância {id_i}
  </div>

  ```
  /stcpcore/instances/id/{id_i}/users/id/{id_u}/ftypes?search=reduced
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| Lista de tipos de arquivos | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #216E4E;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">GET</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Obter tipo de arquivo específicado pelo {id_ft} para o usuário {id_u} na instância {id_i}
  </div>

  ```
  /stcpcore/instances/id/{id_i}/users/id/{id_u}/ftypes/id/{id_ft}?search=reduced
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| Tipo de arquivo | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #216E4E;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">GET</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Obter tipo de arquivo específicado pelo {name_ft} para o usuário {id_u} na instância {id_i}
  </div>

  ```
  /stcpcore/instances/id/{id_i}/users/id/{id_u}/ftypes/name/{name_ft}?search=reduced
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| Tipo de arquivo | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #216E4E;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">GET</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Obter tipo de arquivo específicado pelo {name_ft} para o usuário {name_u} na instância {id_i}
  </div>

  ```
  /stcpcore/instances/id/{id_i}/users/name/{name_u}/ftypes/name/{name_ft}?search=reduced
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| Tipo de arquivo | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #216E4E;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">GET</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Valide se o nome de arquivo {name} se encontra nas regras de file type do usuário {id_u} da instância {id_i}
  </div>

  ```
  /stcpcore/ftypes/validate?instance={id_i}&user={id_u}&filename={name}
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| Tipo de arquivo | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #216E4E;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">GET</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Valide se o nome do arquivo {name} se encontra nas regras de file type da instância {id_i}
  </div>

  ```
  /stcpcore/ftypesglobal/validate?instance={id_i}&filename={name}
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| Tipo de arquivo | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #5E4DB2;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;

">
<h5 style="color: white;">POST</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Cadastra uma nova instância no servidor
  </div>

  ```
  /stcpcore/instances
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| ID | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #5E4DB2;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;

">
<h5 style="color: white;">POST</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Cadastra um novo usuário na instância {id_i}
  </div>

  ```
  /stcpcore/instances/{id_i}/users
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| ID | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #5E4DB2;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;

">
<h5 style="color: white;">POST</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Cadastra um novo serviço de rede na instância {id_i}
  </div>

  ```
  /stcpcore/instances/{id_i}/services
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| ID | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #5E4DB2;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;

">
<h5 style="color: white;">POST</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Cadastra um novo agendamento na instância {id_i}
  </div>

  ```
  /stcpcore/instances/{id_i}/schedules
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| ID | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #5E4DB2;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;

">
<h5 style="color: white;">POST</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Cadastra um novo tipo de arquivo global na instância {id_i}
  </div>

  ```
  /stcpcore/instances/{id_i}/ftypesglobal
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| ID | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #5E4DB2;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;

">
<h5 style="color: white;">POST</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Cadastra um novo tipo de arquivo no usuário {id_u} na instância {id_i}
  </div>

  ```
  /stcpcore/instances/{id_i}/users/{id_u}/ftypes
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| ID | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #5E4DB2;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;

">
<h5 style="color: white;">POST</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Requisita ao servidor uma oauth token para requisições de recursos do servidor
  </div>

  ```
  /oauth/token
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| Token | Não       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #0155CC;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">UPDATE</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Atualiza uma instância no servidor
  </div>

  ```
  /stcpcore/instances
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| ID | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #0155CC;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">UPDATE</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Atualiza um usuário na instância {id_i}
  </div>

  ```
  /stcpcore/instances/{id_i}/users
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| ID | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #0155CC;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">UPDATE</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Atualiza um serviço de rede na instância {id_i}
  </div>

  ```
  /stcpcore/instances/{id_i}/services
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| ID | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #0155CC;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">UPDATE</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Atualiza um agendamento na instância {id_i}
  </div>

  ```
  /stcpcore/instances/{id_i}/schedules
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| ID | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #0155CC;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">UPDATE</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Atualiza um tipo de arquivo global na instância {id_i}
  </div>

  ```
  /stcpcore/instances/{id_i}/ftypes_globa
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| ID | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #0155CC;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">UPDATE</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Atualiza um tipo de arquivo no usuário {id_u} na instância {id_i}
  </div>

  ```
  /stcpcore/instances/{id_i}/users/{i d_u}/ftypes
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| ID | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #AE2A18;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">DELETE</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Remove uma instância do servidor
  </div>

  ```
  /stcpcore/instances
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| ID | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #AE2A18;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">DELETE</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Remove um usuário na instância {id_i}
  </div>

  ```
  /stcpcore/instances/{id_i}/users
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| ID | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #AE2A18;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">DELETE</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Remove um serviço de rede na Instância {id_i}
  </div>

  ```
  /stcpcore/instances/{id_i}/services
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| ID | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #AE2A18;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">DELETE</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Remove um agendamento na instância {id_i}
  </div>

  ```
  /stcpcore/instances/{id_i}/users
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| ID | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #AE2A18;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">DELETE</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Remove um tipo de arquivo global na instância {id_i}
  </div>

  ```
  /stcpcore/instances/{id_i}/ftypes_global
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| ID | Sim       |
</div>

<br>
<br>

<!-- HTML e CSS Personalizado api -->
<style>
.response-container {
  margin-top: 10px;
}

.response-status {
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.response-message {
font-size: 14px;
color: #6a737d;  /* cor do texto cinza */
}
</style>

<!-- CSS Método -->
<div style="
  background-color: #AE2A18;
  border: none;
  border-radius: 60px;
  color: white;
  padding: 2px 12px;
  text-align: center;
  display: inline-block;
  letter-spacing: 1px;
  align-items: center;
  justify-content: center;

">
<h5 style="color: white;">DELETE</h5>
</div>

<div class="response-container">
  <div class="response-message">
  Remove um tipo de arquivo no usuário {id_u} na instância {id_i}
  </div>

  ```
  /stcpcore/instances/{id_i}/users/{id_u}/ftypes
  ```

| Retorno      | Oauth |
| :----------- | :-----------: |
| ID | Sim       |
</div>

<br>

> O argumento **?search=reduced** é opcional nos campos que o aceitam. Este campo reduz a carga da resposta retirando o
**config_txt** e retornando apenas informações essenciais como: **Nome**, **Id**, **Description** e **Field**.



