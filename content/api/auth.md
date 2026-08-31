---
title: "Obter token oauth2"
description: "Obtenção de Access Token via OAuth 2.0 Password Grant"
weight: 2
toc: true
cascade:
  type: docs
---
### Descrição

Este endpoint permite ao integrador obter um **Access Token** para autenticar chamadas subsequentes na API, utilizando o fluxo **OAuth 2.0**.

### HTTP request

```text
POST /oauth/token
```

### Request Headers

| Chave | Valor |
|---|---|
| `Content-Type` | `application/x-www-form-urlencoded` |

### Request Body

| Nome | Tipo | Descrição |
|---|---|---|
| `grant_type` | `string` | Tipo do fluxo OAuth utilizado. Para este endpoint, o valor deve ser `password`. |
| `username` | `string` | Nome do operador utilizado para autenticação. |
| `password` | `string` | Senha do operador. |

### Exemplo de Requisição

```text
POST /oauth/token
Host: api.exemplo.com
Content-Type: application/x-www-form-urlencoded

grant_type=password&
username=nome_operador&
password=senha_operador
```

### Estrutura da Resposta

| Nome | Descrição |
|---|---|
| `access_token` | Token de acesso OAuth utilizado para autenticar chamadas subsequentes à API. |
| `scope` | Escopos e permissões associados ao token emitido, representando os acessos do operador autenticado. |
| `operator` | Nome do operador autenticado. |
| `rest_name` | Identificação do serviço REST (`RestAPI`). |
| `token_type` | Tipo do token (`Bearer`). |

### Exemplo de Resposta (Sucesso com Dados)

```json
{
  "access_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
  "scope": "{\"stcpcore\":{\"instance\":15,\"user\":15,\"service\":15,\"schedule\":15...",
  "operator": "stcpadmin",
  "rest_name": "RestAPI",
  "token_type": "Bearer"
}
```

### Códigos de Status da Resposta

| Código | Descrição |
|---:|---|
| `200` | Sucesso – A requisição foi processada com êxito. |
| `400` | Requisição inválida – Parâmetros incorretos ou formato de requisição inválido. |
| `401` | Não autorizado – Token de autenticação inválido ou ausente. |
| `500` | Erro interno do servidor – Ocorreu um erro inesperado no servidor. |
