---
linkTitle: Alteração de senha
layout: docs
sidebar:
  exclude: false
weight: 7
prev:
next:
slug: change-password
---

## Alteração de senha

Esta requisição deve ser utilizada para alteração de senha do usuário na plataforma.

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


**Alteração de senha do usuário**

```
https://<domain>/directlink/v1/auth/change
```

**Parameters**

### Query

|   Parâmetro    | Descrição | |
| ----------- | ----------- | -------- |
| *k**   | Token de alteração de senha retornado na resposta das funções: *[Primeiro acesso](/docs/stcpdirectlink/05-api/first-acess/)* ou *[Esqueceu a senha](/docs/stcpdirectlink/05-api/forgot-password/)*|
| p | Pin (código de segurança) que será enviado para o email do usuário que está cadastrado na plataforma |
| z | Nova senha |



### Header

|   Parâmetro    | Descrição | |
| ----------- | ----------- | -------- |
| *Content_type**  |  application/json |



### Responses

<br>
<details style="color: green; cursor: pointer;">
<summary>200: OK   (Sucesso)</summary>

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


