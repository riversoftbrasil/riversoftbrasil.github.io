---
linkTitle: Logout (basic e bearer)
layout: docs
cascade:
  type: docs
sidebar:
  exclude: false
weight: 3
prev: /login
next: /first-acess
slug: logout
draft: false
---

## Logout (basic)

Esta requisição deve ser utilizada para o registro de logout do usuário da plataforma.

<br>

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

<!-- ## Logout utilizando a autenticação no modo Basic -->

```
https://your-domain/directlink/v1/auth/login
```

Esta requisição deve ser utilizada para obter o token de autorização

### Parameters

#### Header

|    Nome   | Descrição |
| ----------- | ----------- |
| *Authorization* <span style="color:red;">*</span>   | Basic base64 (username:password) |
| *Content_type* <span style="color:red;">*</span> |  application/json |

#### Responses

<br>

<!-- CSS e HTML com os estilos de respostas -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">

<style>
.response-status {
font-family: "Roboto", sans-serif;
font-weight: 300;
font-style: normal;
display: flex;
align-items: center;
margin-bottom: 10px;
border-bottom: 1px solid #e1e4e8;
padding-bottom: 5px;
}

.status-code-green {
display: inline-block;
background-color: #e6ffed; /* cor de fundo */
color: #27a745; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.status-code-orange {
display: inline-block;
background-color: #B95E04; /* cor de fundo */
color: #F7C1BD; /* cor do texto */
padding: 2px 6px;
border-radius: 3px;
font-weight: bold;
margin-right: 5px;
}

.status-code-red {
display: inline-block;
background-color: #D33D3D; /* cor de fundo */
color: #FCD4D4; /* cor do texto */
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

<!-- Status 200 -->
<div class="response-container">
  <div class="response-status">
          <span class="status-code-green">200</span> OK
  </div>
  <div class="response-message">Successo</div>

```json
{
    "status": 0,
    "description": "handlerAuthLogout:succsessfully",
    "apiver": "v1 (3.6.0)",
    "user": "",
    "bearer": "",
    "urllink": "",
    "time": "2022-06-13 17:54:10.137992 -0300 -03 m=+19746.016009415"
}
```
<br>

<!-- Status 400 -->

  <div class="response-status">
    <span class="status-code-orange">400</span> Bad Request
  </div>
  <div class="response-message">Parâmetros da requisição inválidos</div>

```json
{
    "status": 400,
    "description": "Bad Request",
    "apiver": "v1 (3.6.0)",
    "time": "2022-06-13 17:55:53.559292 -0300 -03 m=+19849.437332386"
}
```
<br>

<!-- Status 401 -->
<div class="response-status">
  <span class="status-code-orange">401</span> Unauthorized
</div>
<div class="response-message">
 Usuário não existe ou senha inválida
</div>


```json
{
    "status": 401,
    "description": "Unauthorized",
    "apiver": "v1 (3.6.0)",
    "time": "2022-06-13 17:56:45.233594 -0300 -03 m=+19901.111646777"
}
```
<br>

<!-- Status 500 -->
<div class="response-status">
  <span class="status-code-red">500</span> Internal Server Error
</div>
<div class="response-message">
    Falha interna
</div>

```json
{
    "status": 500,
    "description": "Internal Server Error",
    "apiver": "v1 (3.6.0)",
    "time": "2022-06-13 17:56:45.233594 -0300 -03 m=+19901.111646777"
}
```
</div>

## Logout (bearer)

Esta requisição deve ser utilizada para o registro de logout do usuário da plataforma.

<br>

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



<!-- **Logout utilizando a autenticação no modo Bearer** -->

```
https://your-domain/directlink/v1/auth/logout
```


Esta requisição deve ser utilizada para obter o token de autorização

### Parameters


#### Header

|    Nome   | Descrição | |
| ----------- | ----------- | -------- |
| *Authorization**   | Bearer `<token>` |
| *Content_type**  |  application/json |


#### Responses

<br>
<!-- Status 200 -->
<div class="response-container">
  <div class="response-status">
          <span class="status-code-green">200</span> OK
  </div>
  <div class="response-message">Successo</div>

```json
{
  "status": 0,
  "description": "handlerAuthLogout:succsessfully",
  "apiver": "v1 (3.6.0)",
  "user": "",
  "bearer": "",
  "time": "2022-06-13 17:54:10.137992 -0300 -03 m=+19746.016009415"
}
```
<br>

<!-- Status 400 -->

  <div class="response-status">
    <span class="status-code-orange">400</span> Bad Request
  </div>
  <div class="response-message">Parâmetros da requisição inválidos</div>

```json
{
  "status": 400,
  "description": "Bad Request",
  "apiver": "v1 (3.6.0)",
  "time": "2022-06-13 17:55:53.559292 -0300 -03 m=+19849.437332386"
}
```
<br>

<!-- Status 401 -->
<div class="response-status">
  <span class="status-code-orange">401</span> Unauthorized
</div>
<div class="response-message">
 Usuário não existe ou senha inválida
</div>

```json
{
    "status": 401,
    "description": "Unauthorized",
    "apiver": "v1 (3.6.0)",
    "time": "2022-06-13 17:56:45.233594 -0300 -03 m=+19901.111646777"
}
```
<br>

<!-- Status 500 -->
<div class="response-status">
  <span class="status-code-red">500</span> Internal Server Error
</div>
<div class="response-message">
    Falha interna
</div>

```json
{
    "status": 500,
    "description": "Internal Server Error",
    "apiver": "v1 (3.6.0)",
    "time": "2022-06-13 17:56:45.233594 -0300 -03 m=+19901.111646777"
}
```
</div>