---
linkTitle: Upload de arquivo json (basic e bearer)
layout: docs
sidebar:
  exclude: false
weight: 11
prev: /docs/getting-started
next: /docs/guide/organize-files
slug: upload-json

---

## Upload de arquivo json (basic)

Esta requisição deve ser utilizada para upload do arquivo json para área do usuário na plataforma.
​

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

**Upload de arquivo json utilizado no modo Basic**

```
https://<domain>/directlink/v1/upload
```

**Parameters**


### Header


|     Parâmetro  | Descrição | |
| ----------- | ----------- | -------- |
| *Authorization**  |  Basic base64(username:password) |
| *Content_type**  |   |
| **X-STCPDIRECTLINK-DESTINATION** |   |
| **X-STCPDIRECTLINK-EMAIL**  |   |
| **X-STCPDIRECTLINK-MOBILE**  |   |
| **X-STCPDIRECTLINK-HASH**  |   |
| **X-STCPDIRECTLINK-FILENAME**  |   |
| **X-STCPDIRECTLINK-INFO**  |   |

<!--
X-STCPDIRECTLINK-DESTINATION
X-STCPDIRECTLINK-EMAIL
X-STCPDIRECTLINK-MOBILE ​
X-STCPDIRECTLINK-HASH ​
X-STCPDIRECTLINK-FILENAME ​
X-STCPDIRECTLINK-INFO -->


### Responses

<br>
<details style="color: green; cursor: pointer;">
<summary>200: OK   (Sucesso)</summary>

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
            "linkURL": "http://<domain>/directlink/v1/download/file?lang=pt&k=3PrmsdgImuNTBfIvGQ8JmyqE3YSfTPk-KnoJi0LbT5xnMWLX7eYVboX_lT_M2cFElbCtRpwzRn0CzwUNNX50gFI-5iCGBn_n825LF37le_TJfMcvvLuEf0YXY8Gz4sJAEQ5JsGRmT3TxcK9q7FAUT30inBA7IDRlFbNfr_R94sdgRIWDUYnC_B5ArcHAeUM00ufuSdYz3Anao7JXuvjfJOMB9fKB_1EY_40qv7kN7ek75ncdVM_xYUwHzIfNRZ7mfTtdrVwmL_E7gQmHupyVuyp-_8BXiWDKIIk="
        },
        {
            "id": 3,
            "name": "teste2",
            "length": 42,
            "modified": 1654642758397,
            "linkURL": "http://<domain>/directlink/v1/download/file?lang=pt&k=Ry0-IX7xa8WyY48gguPLSYgGFSneJA7aMoEX_jgAy0om7hjBNpVb1br3VhG5I8B_RMU0UqBS71PlHpDd3tiiS2rJfaJDw7mn3AmFXW-AyQ0rXsB6O0hdMstETl2l9dximI8ua0FIB-26Do7lLX6yhS0dK2bInPdcfCbq4RR-Tf_17ofccsl2tqGA9taBmd1TovEuN9ZOHlwJdKWGoT8TJ57LF4FmD5eWHG-y1WVsY8lB-sZHoSzc1I5ptq4hco0AWsS5HGieLcIpwZulZSpzGjO6"
        }
    ],
    "time": "2022-06-13 19:37:52.366591 -0300 -03 m=+25968.263316625"
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
    "status": 500,
    "description": "Internal Server Error",
    "apiver": "v1 (3.6.0)",
    "time": "2022-06-13 17:56:45.233594 -0300 -03 m=+19901.111646777"
}
```
</details>

## Upload de arquivo json (bearer)

Esta requisição deve ser utilizada para upload do arquivo json para área do usuário na plataforma.

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

**Upload de arquivo json utilizado no modo Bearer**

```
https://<domain>/directlink/v1/upload
```

**Parameters**


### Header


|   Parâmetro | Descrição  | |
| ----------- | ----------- | -------- |
| *Authorization**  |  Bearer `<token>` |
| *Content_type**  |   |
| **X-STCPDIRECTLINK-DESTINATION** |   |
| **X-STCPDIRECTLINK-EMAIL**  |   |
| **X-STCPDIRECTLINK-MOBILE**  |   |
| **X-STCPDIRECTLINK-HASH**  |   |
| **X-STCPDIRECTLINK-FILENAME**  |   |
| **X-STCPDIRECTLINK-INFO**  |   |

<!--
X-STCPDIRECTLINK-DESTINATION
X-STCPDIRECTLINK-EMAIL
X-STCPDIRECTLINK-MOBILE ​
X-STCPDIRECTLINK-HASH ​
X-STCPDIRECTLINK-FILENAME ​
X-STCPDIRECTLINK-INFO -->


### Responses

<br>
<details style="color: green; cursor: pointer;">
<summary>200: OK   (Sucesso)</summary>

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
            "linkURL": "http://<domain>/directlink/v1/download/file?lang=pt&k=3PrmsdgImuNTBfIvGQ8JmyqE3YSfTPk-KnoJi0LbT5xnMWLX7eYVboX_lT_M2cFElbCtRpwzRn0CzwUNNX50gFI-5iCGBn_n825LF37le_TJfMcvvLuEf0YXY8Gz4sJAEQ5JsGRmT3TxcK9q7FAUT30inBA7IDRlFbNfr_R94sdgRIWDUYnC_B5ArcHAeUM00ufuSdYz3Anao7JXuvjfJOMB9fKB_1EY_40qv7kN7ek75ncdVM_xYUwHzIfNRZ7mfTtdrVwmL_E7gQmHupyVuyp-_8BXiWDKIIk="
        },
        {
            "id": 3,
            "name": "teste2",
            "length": 42,
            "modified": 1654642758397,
            "linkURL": "http://<domain>/directlink/v1/download/file?lang=pt&k=Ry0-IX7xa8WyY48gguPLSYgGFSneJA7aMoEX_jgAy0om7hjBNpVb1br3VhG5I8B_RMU0UqBS71PlHpDd3tiiS2rJfaJDw7mn3AmFXW-AyQ0rXsB6O0hdMstETl2l9dximI8ua0FIB-26Do7lLX6yhS0dK2bInPdcfCbq4RR-Tf_17ofccsl2tqGA9taBmd1TovEuN9ZOHlwJdKWGoT8TJ57LF4FmD5eWHG-y1WVsY8lB-sZHoSzc1I5ptq4hco0AWsS5HGieLcIpwZulZSpzGjO6"
        }
    ],
    "time": "2022-06-13 19:37:52.366591 -0300 -03 m=+25968.263316625"
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
    "status": 500,
    "description": "Internal Server Error",
    "apiver": "v1 (3.6.0)",
    "time": "2022-06-13 17:56:45.233594 -0300 -03 m=+19901.111646777"
}
```
</details>
