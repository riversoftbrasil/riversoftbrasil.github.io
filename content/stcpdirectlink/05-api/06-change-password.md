---
linkTitle: Alteração de senha
layout: docs
cascade:
  type: docs
sidebar:
  exclude: false
weight: 6
prev: /forgot-password
next: /list-download
slug: alterar-senha
draft: false
lastmod: 2024-09-23
---

## Alteração de senha

Esta requisição deve ser utilizada para alteração de senha do usuário na plataforma.

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


**Alteração de senha do usuário**

```
https://<domain>/directlink/v1/auth/change
```

**Parameters**

### Query

|   Parâmetro    | Descrição | |
| ----------- | ----------- | -------- |
| *k* <span style="color:red;">*</span>   | Token de alteração de senha retornado na resposta das funções: *[Primeiro acesso](/stcpdirectlink/05-api/first-acess/)* ou *[Esqueceu a senha](stcpdirectlink/05-api/forgot-password/)*|
| p | Pin (código de segurança) que será enviado para o email do usuário que está cadastrado na plataforma |
| z | Nova senha |



### Header

|   Parâmetro    | Descrição | |
| ----------- | ----------- | -------- |
| *Content_type* <span style="color:red;">*</span>  |  application/json |

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
    "status": 0,
    "description": "handlerAuthForget:succsessfully",
    "apiver": "v1 (3.6.0)",
    "user": "USER1",
    "linkURL": "https://<domain>/directlink/v1/auth/change?lang=pt&k=B6PhQo1gVaksHm-E4JGwuqWkZj6MT6srC74-wZ2Fsw9MXDduhfs-Nw3utpRFV4l6eTY4Tr-lOCDR0eoKG7Y2u3FRQiSm1TO_F_KD0cfWX2_QWASF1rvrx4KRiw0t_PKum5qMNqEWEBqB9d9RJd8Opz4SPfILjaoRBtPuMQOsxkIbO2pn6-tuC5I_AyisBOaGMR3MOnYXVWwr6e3bKvFIqCY6",
    "time": "2022-06-13 19:23:45.771553 -0300 -03 m=+25121.666310551"
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

<!-- Status 403 -->
<div class="response-status">
  <span class="status-code-orange">403</span> Forbidden
</div>
<div class="response-message">
Usuário não é o primeiro acesso
</div>

```json
{
    "status": 403,
    "description": "Forbidden",
    "apiver": "v1 (3.6.0)",
    "time": "2022-06-13 19:12:14.840185 -0300 -03 m=+24430.733336090"
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

{{< callout type="warning" >}}
<span style="color:red;">*</span> Parâmetro obrigatório
{{< /callout >}}
