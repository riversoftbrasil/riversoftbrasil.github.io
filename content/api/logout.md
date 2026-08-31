---
title: "Logout"
description: ""
weight: 4
toc: true
cascade:
  type: docs
next: system
---
### Descrição

Este endpoint permite ao integrador **encerrar a sessão autenticada**, invalidando o token de acesso utilizado nas chamadas subsequentes à API.

Após a execução do logout, o **Access Token** deixa de ser válido e um novo processo de autenticação deverá ser realizado para acessar novamente os recursos protegidos da API.


### HTTP request

```text
DELETE /disconnect/api/v3/logout
```

### Request Headers

| Chave | Valor |
|---|---|
| `Authorization` | `Bearer <ACCESS_TOKEN>` |
| `Accept` | `application/json` |

### Exemplo de Requisição

```text
DELETE /disconnect/api/v3/logout
Authorization: Bearer <ACCESS_TOKEN>
Accept: application/json
```

### Estrutura da Resposta

| Nome | Tipo | Descrição |
|---|---|---|
| `data` | `string` | Mensagem indicando o resultado da operação de logout. |

### Exemplo de Resposta (Sucesso com Dados)

```json
{
    "data": "Logout successful"
}
```

### Códigos de Status da Resposta

| Código | Descrição |
|---:|---|
| `200` | Sucesso – A requisição foi processada com êxito. |
| `400` | Requisição inválida – Parâmetros incorretos ou formato de requisição inválido. |
| `401` | Não autorizado – Token de autenticação inválido ou ausente. |
| `500` | Erro interno do servidor – Ocorreu um erro inesperado no servidor. |
