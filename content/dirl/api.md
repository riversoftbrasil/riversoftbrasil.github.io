---
linkTitle: API Rest
layout: docs
sidebar:
  exclude: false
weight: 4
prev: /docs/getting-started
next: /docs/guide/organize-files
---

# Obter token oauth2

Esta requisição deve ser utilizada para obter o token(bearer) de autorização de acesso às funções da plataforma.

### Endpoint
https://<domain>/directlink/v1/oauth2/token

### Descrição

Oauth2 token

### Método HTTP

- `POST`: Para criar novos recursos.


### Parâmetros da solicitação

| Parâmetro      | Tipo   | Descrição                      |
| -------------- | ------ | -------------------------------- |
| parametro1     | String | Descrição do parâmetro 1.      |
| parametro2     | Int    | Descrição do parâmetro 2.      |

### Exemplo de solicitação

```http
GET /caminho-do-endpoint-1?parametro1=valor1&parametro2=valor2
