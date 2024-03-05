---
linkTitle: Primeiro Acesso
layout: docs
sidebar:
  exclude: false
weight: 4
prev: /logout
next: /forgot-password
slug: first-acess
---

## Primeiro Acesso

Esta requisição deve ser utilizada para obtenção do link para alteração de senha da plataforma no primeiro acesso.

<br>

<div style="
  background-color: #307F98; /* Blue */
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


**Obter o link de alteração de senha do primeiro acesso**

```
https://<domain>/directlink/v1/auth/firstaccess
```


Esta requisição deve ser utilizada para obter o token de autorização

**Parameters**

### Query

| Nome      | Descrição |
| ----------- | ----------- |
| *u**   | Nome do usuário cadastrado na plataforma |



### Header

|    Nome   | Descrição | |
| ----------- | ----------- | -------- |
| *Content_type**  |  application/json |


### Responses

<br>
<details style="color: green; cursor: pointer;">
<summary>200: OK   (Sucesso)</summary>

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
<summary style="color: #B95E04; cursor: pointer;">403: Forbidden   (Usuário não é o primeiro acesso)</summary>

```json
{
    "status": 403,
    "description": "Forbidden",
    "apiver": "v1 (3.6.0)",
    "time": "2022-06-13 19:12:14.840185 -0300 -03 m=+24430.733336090"
}
```
</details>

<details>
<summary style="color: #D33D3D; cursor: pointer;">500: Internal Server Error   (Falha interna)</summary>

```json
{
    "status": 500,
    "description": "Internal Server Error",
    "apiver": "v1 (3.6.0)",
    "time": "2022-06-13 17:56:45.233594 -0300 -03 m=+19901.111646777"
}
```
</details>

