---
linkTitle: Lista de arquivos backup para download (basic e bearer)
layout: docs
cascade:
  type: docs
sidebar:
  exclude: false
weight: 8
prev: /list-download
next: /download-de-arquivos
slug: lista-backup-download
draft: false
lastmod: 2024-06-20
---

## Lista de arquivos backup para download (basic)

Esta requisição deve ser utilizada para obter a lista de arquivos da área de backup do usuário da plataforma para download.

<br>

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

```
https://your-domain/directlink/v1/download/list/backup
```

### Parameters

> [!WARNING] Atenção
> <span style="color:red;">*</span> Parâmetro obrigatório

#### Query

|  Parâmetro  | Tipo | Descrição |
| ----------- | ----------- | -------- |
| *page* <span style="color:red;">*</span>  | Integer | <p> Página da lista contendo no máximo 100 registros. <br> **obs.:** Este valor deve ser incrementado até retornar uma lista vazia. </p> |


#### Header

| Parâmetro       | Descrição                                |
| --------------- | ---------------------------------------- |
| *Authorization* <span style="color:red;">*</span> | Basic base64(username:password) |
| *Content_type* <span style="color:red;">*</span>  | application/json               |

<br>

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
    "description": "handlerDownloadList:succsessfully",
    "apiver": "v1 (3.6.0)",
    "user": "USER1",
    "files": [
        {
            "id": 2,
            "name": "logout (1)",
            "length": 0,
            "modified": 1655055301684,
            "linkURL": "http://your-domain/directlink/v1/download/file?lang=pt&k=3PrmsdgImuNTBfIvGQ8JmyqE3YSfTPk-KnoJi0LbT5xnMWLX7eYVboX_lT_M2cFElbCtRpwzRn0CzwUNNX50gFI-5iCGBn_n825LF37le_TJfMcvvLuEf0YXY8Gz4sJAEQ5JsGRmT3TxcK9q7FAUT30inBA7IDRlFbNfr_R94sdgRIWDUYnC_B5ArcHAeUM00ufuSdYz3Anao7JXuvjfJOMB9fKB_1EY_40qv7kN7ek75ncdVM_xYUwHzIfNRZ7mfTtdrVwmL_E7gQmHupyVuyp-_8BXiWDKIIk="
        },
        {
            "id": 3,
            "name": "teste2",
            "length": 42,
            "modified": 1654642758397,
            "linkURL": "http://your-domain/directlink/v1/download/file?lang=pt&k=Ry0-IX7xa8WyY48gguPLSYgGFSneJA7aMoEX_jgAy0om7hjBNpVb1br3VhG5I8B_RMU0UqBS71PlHpDd3tiiS2rJfaJDw7mn3AmFXW-AyQ0rXsB6O0hdMstETl2l9dximI8ua0FIB-26Do7lLX6yhS0dK2bInPdcfCbq4RR-Tf_17ofccsl2tqGA9taBmd1TovEuN9ZOHlwJdKWGoT8TJ57LF4FmD5eWHG-y1WVsY8lB-sZHoSzc1I5ptq4hco0AWsS5HGieLcIpwZulZSpzGjO6"
        }
    ],
    "time": "2022-06-13 19:37:52.366591 -0300 -03 m=+25968.263316625"
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

## Lista de arquivos backup para download (bearer)

Esta requisição deve ser utilizada para obter a lista de arquivos da área de backup do usuário da plataforma para download.

<br>

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

```
https://your-domain/directlink/v1/download/list/backup
```

### Parameters

> [!WARNING] Atenção
> <span style="color:red;">*</span> Parâmetro obrigatório

#### Query

|   Parâmetro    | Descrição |
| ----------- | ----------- | -------- |
| *page* <span style="color:red;">*</span>  | Integer | <p> Página da lista contendo no máximo 100 registros. <br> **obs.:** Este valor deve ser incrementado até retornar uma lista vazia. </p> |


#### Header

|  Parâmetro  | Descrição | |
| ----------- | ----------- | -------- |
| *Authorization* <span style="color:red;">*</span>  |  Bearer `<token>` |
| *Content_type* <span style="color:red;">*</span>  |  application/json |


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
    "description": "handlerDownloadList:succsessfully",
    "apiver": "v1 (3.6.0)",
    "user": "USER1",
    "files": [
        {
            "id": 2,
            "name": "logout (1)",
            "length": 0,
            "modified": 1655055301684,
            "linkURL": "http://your-domain/directlink/v1/download/file?lang=pt&k=3PrmsdgImuNTBfIvGQ8JmyqE3YSfTPk-KnoJi0LbT5xnMWLX7eYVboX_lT_M2cFElbCtRpwzRn0CzwUNNX50gFI-5iCGBn_n825LF37le_TJfMcvvLuEf0YXY8Gz4sJAEQ5JsGRmT3TxcK9q7FAUT30inBA7IDRlFbNfr_R94sdgRIWDUYnC_B5ArcHAeUM00ufuSdYz3Anao7JXuvjfJOMB9fKB_1EY_40qv7kN7ek75ncdVM_xYUwHzIfNRZ7mfTtdrVwmL_E7gQmHupyVuyp-_8BXiWDKIIk="
        },
        {
            "id": 3,
            "name": "teste2",
            "length": 42,
            "modified": 1654642758397,
            "linkURL": "http://your-domain/directlink/v1/download/file?lang=pt&k=Ry0-IX7xa8WyY48gguPLSYgGFSneJA7aMoEX_jgAy0om7hjBNpVb1br3VhG5I8B_RMU0UqBS71PlHpDd3tiiS2rJfaJDw7mn3AmFXW-AyQ0rXsB6O0hdMstETl2l9dximI8ua0FIB-26Do7lLX6yhS0dK2bInPdcfCbq4RR-Tf_17ofccsl2tqGA9taBmd1TovEuN9ZOHlwJdKWGoT8TJ57LF4FmD5eWHG-y1WVsY8lB-sZHoSzc1I5ptq4hco0AWsS5HGieLcIpwZulZSpzGjO6"
        }
    ],
    "time": "2022-06-13 19:37:52.366591 -0300 -03 m=+25968.263316625"
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