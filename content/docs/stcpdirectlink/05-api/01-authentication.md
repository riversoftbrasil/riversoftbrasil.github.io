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
---

## Token de autorização

Esta requisição deve ser utilizada para obter o token(bearer) de autorização de acesso as funções da plataforma.

<br>
<div style="
  background-color: #04AA6D; /* Green */
  /* cursor: pointer; */
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
https://<domain>/directlink/v1/oauth2/token
```

**OAuth2 token**

Esta requisição deve ser utilizada para obter o token de autorização

**Parameters**

### Header

| Chave | Tipo | Valor|
| --- | ----------- | ---------|
| *Content_type** | password | application/x-www-form-urlencoded |

### Body

|  Nome  | Descrição |
| ----------- | ----------- |
| *grant_type**      | password |
| *username**      | nome do usuário na plataforma |
| *password**      | senha do usuário na plataforma |

<!-- *required -->

{{< callout type="info" >}}
 O campo body, deve ser formatado em query string como exemplo: grant_type=*password&username*=`usuario`&password=`senha`
{{< /callout >}}

### Responses

<br>
<details>
<summary style="color: green; cursor: pointer;">200: OK   (Sucesso)</summary>

```json
{
    "access_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC41LjM4OjgwODAvZGlyZWN0bGluay92MSIsInN1YiI6IlVTRVIxIiwiYXVkIjpbImh0dHA6Ly8xOTIuMTY4LjUuMzg6ODA4MC9kaXJlY3RsaW5rL3YxIl0sImV4cCI6MTY1NTE1OTk3NiwibmJmIjoxNjU1MTU2Mzc2LCJpYXQiOjE2NTUxNTYzNzYsImp0aSI6IjE2NTUxNTYzNzY0Mjg2OTcwMDAifQ.GeMf9voddvEdgStH2GJqHIKIWXXYYbhLEKVz-kq_Cp8",
    "token_type": "Bearer",
    "expires_in": 3600,
    "scope": "https://<domain>/directlink/v1"
}
```
</details>


<details>
<summary style="color: #B95E04; cursor: pointer;">400: Bad Request   (Parâmetros da requisição inválidos)</summary>

```json
{
    "error": 400,
    "error_description": "Bad Request",
    "error_uri": "https://<domain>/directlink/v1"
}
```
</details>

<details>
<summary style="color: #B95E04; cursor: pointer;">401: Unauthorized   (Usuário não existe ou senha inválida)</summary>

```json
{
    "error": 401,
    "error_description": "Unauthorized",
    "error_uri": "https://<domain>/directlink/v1"
}
```
</details>

<details>
<summary style="color: #D33D3D; cursor: pointer;">500: Internal Server Error   (Falha interna)</summary>

```json
{
    "error": 500,
    "error_description": "Internal server error",
    "error_uri": "https://<domain>/directlink/v1"
}
```
</details>

</details>


<!--
{{% details title="POST" closed="false" %}}

{{% /details %}} -->

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


