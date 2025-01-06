---
linkTitle: Obter token OAuth2
layout: docs
cascade:
  type: docs
sidebar:
  exclude: false
weight: 1
prev: /05-api
next: /login
slug: token-oauth2
draft: false
lastmod: 2024-09-23
---

## Token de autorização

Esta requisição deve ser utilizada para obter o token(bearer) de autorização de acesso as funções da plataforma.

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


```url
https://your-domain/directlink/v1/oauth2/token
```

## OAuth2 token

Esta requisição deve ser utilizada para obter o token de autorização

> [!WARNING] Atenção
> <span style="color:red;">*</span> Parâmetro obrigatório

## Parameters

### Header

| Chave | Tipo | Valor|
| --- | ----------- | ---------|
| *Content_type* <span style="color:red;">*</span> | password | application/x-www-form-urlencoded |

### Body

|  Nome  | Descrição |
| ----------- | ----------- |
| *grant_type* <span style="color:red;">*</span>      | password |
| *username* <span style="color:red;">*</span>    | nome do usuário na plataforma |
| *password* <span style="color:red;">*</span>      | senha do usuário na plataforma |


> [!NOTE]  
> O campo body, deve ser formatado em query string como exemplo: grant_type=*password&username*=`usuario`&password=`senha`


### Responses

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
"access_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC41LjM4OjgwODAvZGlyZWN0bGluay92MSIsInN1YiI6IlVTRVIxIiwiYXVkIjpbImh0dHA6Ly8xOTIuMTY4LjUuMzg6ODA4MC9kaXJlY3RsaW5rL3YxIl0sImV4cCI6MTY1NTE1OTk3NiwibmJmIjoxNjU1MTU2Mzc2LCJpYXQiOjE2NTUxNTYzNzYsImp0aSI6IjE2NTUxNTYzNzY0Mjg2OTcwMDAifQ.GeMf9voddvEdgStH2GJqHIKIWXXYYbhLEKVz-kq_Cp8",
"token_type": "Bearer",
"expires_in": 3600,
"scope": "https://your-domain/directlink/v1"
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
    "error": 400,
    "error_description": "Bad Request",
    "error_uri": "https://your-domain/directlink/v1"
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
    "error": 401,
    "error_description": "Unauthorized",
    "error_uri": "https://your-domain/directlink/v1"
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
    "error": 500,
    "error_description": "Internal server error",
    "error_uri": "https://your-domain/directlink/v1"
}
```
</div>

A solicitação do token de autorização para acesso as interfaces disponíveis utiliza o padrão *oauth2*, Resource Owner Password Credential Grant (Autorização para o proprietário do recurso).

### Requisição (exemplo)

```
POST /token HTTP/1.1
Host: server.example.com
Content-Type: application/x-www-form-urlencoded

grant_type=password&username=johndoe&password=A3ddj3w
```

### Resposta (exemplo)

```
HTTP/1.1 200 OK
Content-Type: application/json;charset=UTF-8
Cache-Control: no-store
Pragma: no-cache
```

```json
{
       "access_token":"2YotnFZFEjr1zCsicMWpAA",
       "token_type":"Bearer",
       "expires_in":3600,
       "scope":"example_value"
}
```
