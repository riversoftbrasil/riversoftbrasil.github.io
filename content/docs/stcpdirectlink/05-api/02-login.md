---
linkTitle: Login
layout: docs
cascade:
  type: docs
sidebar:
  exclude: false
weight: 2
prev: /01-authentication
next: /logout
slug: login
draft: false
---

## Login

Esta requisição deve ser utilizada para o registro de login do usuário e obtenção do token (bearer) de autorização de acesso as funções da plataforma.


<br>



<div style="
  background-color: #04AA6D; /* Green */
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


**Login**

```
https://<domain>/directlink/v1/auth/login
```


Esta requisição deve ser utilizada para obter o token de autorização

**Parameters**


### Header

|    Nome   | Descrição |
| ----------- | ----------- | -------- |
| *Authorization**   | Basic base64 (username:password) |
| *Content_type**  |  application/json |


### Responses

<br>
<details style="color: green; cursor: pointer;">
<summary>200: OK (Sucesso)</summary>

```json
{
    "status": 0,
    "description": "handlerAuthLogin:succsessfully",
    "apiver": "v1 (3.6.0)",
    "user": "",
    "bearer": "",
    "time": "2022-06-13 17:54:10.137992 -0300 -03 m=+19746.016009415"
}
```
</details>

<details>
<summary style="color: #B95E04; cursor: pointer;">400: Bad Request   (Parâmetros da requisição inválidos)</summary>

```json
{
    "status": 400,
    "description": "Bad Request",
    "apiver": "v1 (3.6.0)",
    "time": "2022-06-13 17:55:53.559292 -0300 -03 m=+19849.437332386"
}
```
</details>

<details>
<summary style="color: #B95E04; cursor: pointer;">401: Unauthorized   (Usuário não existe ou senha inválida)</summary>

```json
{
    "status": 401,
    "description": "Unauthorized",
    "apiver": "v1 (3.6.0)",
    "time": "2022-06-13 17:56:45.233594 -0300 -03 m=+19901.111646777"
}
```
</details>

<details>
<summary style="color: #D33D3D; cursor: pointer;">500: Internal Server Error   (Falha interna)</summary>

```json
{
    // Response
}
```
</details>

