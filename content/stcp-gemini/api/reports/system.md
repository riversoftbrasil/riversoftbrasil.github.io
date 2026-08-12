---
title: "Eventos - Sistema"
description: "Consulta aos logs de eventos de sistema"
weight: 1
toc: true
prev: logout
---
### Descrição

Este endpoint permite ao integrador consultar os logs de eventos de sistema.

### HTTP request

```text
GET /reports/v2/system
```

### Request Headers

| Chave | Valor |
|---|---|
| `Authorization` | `Bearer <ACCESS_TOKEN>` |
| `Accept` | `application/json` |

### Query Parameters

| Chave | Tipo | Descrição |
|---|---|---|
| `instance` | `string` | Nome da Instância para pesquisa. |
| `msg` | `string` | Mensagem para pesquisa. |
| `modulo` | `string` | Nome do módulo para pesquisa. |
| `start` | `integer` | Data e hora inicial da consulta, em Unix Timestamp (milissegundos). |
| `end` | `integer` | Data e hora final da consulta, em Unix Timestamp (milissegundos). |
| `limit` | `integer` | Números de resultados a serem retornados por página (Máximo 1000). |
| `index` | `integer` | Identificador da transação (IDMENSAGEM) na base de dados. |

### Exemplo de Requisição

```text
GET /reports/v2/system?instance=STCPGEMINI&start=1766188800000&end=1766275199000&limit=1000
Host: api.exemplo.com
Authorization: Bearer <ACCESS_TOKEN>
Accept: application/json
```

### Estrutura da Resposta

A API retorna um objeto JSON contendo os registros encontrados e, quando aplicável, a referência para a próxima página de resultados.

#### Objeto principal

| **Chave** | **Tipo** | **Descrição** |
|---|---|---|
| `data` | `array` | Lista de registros retornados pela consulta. |
| `next` | `string` | URI para consulta da próxima página de resultados. Quando não houver próxima página, o valor poderá ser vazio. |

#### Estrutura dos registros em `data`

| **Chave** | **Tipo** | **Descrição** |
|---|---|---|
| `DATAHORA` | `string` | Data e hora da ocorrência. |
| `INSTANCE` | `string` | Nome da Instância. |
| `USUARIO` | `string` | Nome do Módulo. |
| `CODIGOMENSAGEM` | `string` | Código identificador do evento de sistema. |
| `MENSAGEM` | `string` | Mensagem do evento de sistema. |

### Exemplo de Resposta (Sucesso com Dados)

```json
{
  "data": [
    {
      "DATAHORA": "2025-12-20T19:54:17-03:00",
      "INSTANCE": "STCPGEMINI",
      "USUARIO": "<STCPDirectLink>",
      "CODIGOMENSAGEM": "MSG0910",
      "MENSAGEM": "code=MSG0910 module=<STCPDirectLink> msg=..."
    }
  ],
  "next": "/reports/v2/system?end=1786579199000&index=44497&instance=STCPLAB01&limit=&msg=&start=1785553200000"
}
```

### Exemplo de Resposta (Sem Dados)

```json
{
  "data": null,
  "next": ""
}
```

### Paginação

Quando existirem mais resultados disponíveis, o campo `next` retornará a URI que deverá ser utilizada para consultar a próxima página.

Exemplo:

```text
/reports/v2/system?end=1786579199000&index=44497&instance=STCPLAB01&limit=&msg=&start=1785553200000

```

### Códigos de Status da Resposta

| Código | Descrição |
|---:|---|
| `200` | Sucesso – A requisição foi processada com êxito. |
| `400` | Requisição inválida – Parâmetros incorretos ou formato de requisição inválido. |
| `401` | Não autorizado – Token de autenticação inválido ou ausente. |
| `500` | Erro interno do servidor – Ocorreu um erro inesperado no servidor. |
