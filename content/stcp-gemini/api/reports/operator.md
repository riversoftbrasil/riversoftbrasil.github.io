---
title: "Eventos - Operadores"
description: "Consulta aos logs de operadores"
weight: 3
toc: true
---
## Descrição

Este endpoint permite ao integrador consultar os **logs de atividades dos Operadores**.

## HTTP request

```text
GET /reports/v2/operators
```

## Request Headers

| **Chave** | **Valor** |
|---|---|
| `Authorization` | `Bearer <ACCESS_TOKEN>` |
| `Accept` | `application/json` |

## Query Parameters

| **Chave** | **Tipo** | **Descrição** |
|---|---|---|
| `msg` | `string` | Mensagem ou conteúdo do evento utilizado como filtro da pesquisa. |
| `operador` | `string` | Nome do Operador para pesquisa. |
| `start` | `integer` | Data e hora inicial da consulta, em Unix Timestamp (milissegundos). |
| `end` | `integer` | Data e hora final da consulta, em Unix Timestamp (milissegundos). |
| `limit` | `integer` | Número máximo de resultados a serem retornados por página. |
| `index` | `integer` | Índice utilizado para controle da paginação dos resultados. |

## Exemplo de Requisição

```text
GET /reports/v2/operators?msg=&operador=&start=1786503600000&end=1786589999000&limit=100&index=0
Host: api.exemplo.com
Authorization: Bearer <ACCESS_TOKEN>
Accept: application/json
```

## Estrutura da Resposta

A API retorna um objeto JSON contendo os registros encontrados e, quando aplicável, a referência para a próxima página de resultados.

### Objeto principal

| **Chave** | **Tipo** | **Descrição** |
|---|---|---|
| `data` | `array` | Lista de registros retornados pela consulta. |
| `next` | `string` | URI para consulta da próxima página de resultados. Quando não houver próxima página, o valor poderá ser vazio. |

### Estrutura dos registros em `data`

| **Chave** | **Tipo** | **Descrição** |
|---|---|---|
| `OPERADOR` | `string` | Nome do Operador associado ao evento. |
| `MODULO` | `string` | Módulo do STCP responsável pelo registro do evento. |
| `CODIGOMENSAGEM` | `string` | Código identificador do evento. |
| `MENSAGEM` | `string` | Detalhes do evento ou da operação executada. |
| `DATAHORA` | `string` | Data e hora da ocorrência do evento. |

## Exemplo de Resposta (Sucesso com Dados)

```json
{
  "data": [
    {
      "OPERADOR": "stcpadmin",
      "MODULO": "<STCPRestAPI>",
      "CODIGOMENSAGEM": "MSG3100",
      "MENSAGEM": "service=riversoft-rest-api operator=stcpadmin status=200 method=GET path=/reports/v2/operators?...",
      "DATAHORA": "2026-08-12T05:16:02-03:00"
    }
  ],
  "next": "/reports/v2/operators?end=1786589999000&index=47043&limit=100&msg=&operador=&start=1786503600000"
}
```

## Exemplo de Resposta (Sem Dados)

```json
{
  "data": null,
  "next": ""
}
```

## Paginação

Quando existirem mais resultados disponíveis, o campo `next` retornará a URI que deverá ser utilizada para consultar a próxima página.

Exemplo:

```text
/reports/v2/operators?end=1786579199000&index=47165&limit=100&msg=&operador=&start=1785553200000
```

## Códigos de Status da Resposta

| **Código** | **Descrição** |
|---|---|
| `200` | Sucesso – A requisição foi processada com êxito. |
| `400` | Requisição inválida – Parâmetros incorretos ou formato de requisição inválido. |
| `401` | Não autorizado – Token de autenticação inválido ou ausente. |
| `500` | Erro interno do servidor – Ocorreu um erro inesperado no servidor. |
