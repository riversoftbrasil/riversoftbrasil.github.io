---
title: "Transferências - Histórico"
description: "Consulta ao histórico de transferências"
weight: 4
toc: true
---
## Descrição

Este endpoint permite ao integrador consultar o histórico de transferências.

## HTTP request

```text
GET /reports/v2/transfers
```

## Request Headers

| Chave | Valor |
|---|---|
| `Authorization` | `Bearer <ACCESS_TOKEN>` |
| `Accept` | `application/json` |

## Query Parameters

| Chave | Tipo | Descrição |
|---|---|---|
| `instance` | `string` | Nome da Instância para pesquisa. |
| `user` | `string` | Nome do Usuário para pesquisa. |
| `tags` | `object` | Tag aplicada para o tipo de arquivo. |
| `events` | `object` | Array de objetos com os códigos de eventos da transferência. Os valores permitidos são `5` (Transmissão) ou `7` (Recepção). |
| `limit` | `integer` | Números de resultados a serem retornados por página (Máximo 1000). |
| `results` | `integer` | Determina tipo de registro a ser retornado. Os valores permitidos são `0` para transferências com sucesso e `-1` para transferências com erro. Para exibir todos os tipos de registro (sucesso e erro), esse parâmetro deverá ser omitido. |
| `filename` | `string` | Nome do arquivo para pesquisa. |
| `start` | `integer` | Data e hora inicial da consulta, em Unix Timestamp (milissegundos). |
| `end` | `integer` | Data e hora final da consulta, em Unix Timestamp (milissegundos). |

## Exemplo de Requisição

```text
GET /reports/v2/transfers?instance=STCPGEMINI&events=5&events=7&limit=1000&start=1766188800000&end=1766275199000
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
| `DATAHORA` | `string` | Data e hora da ocorrência. |
| `INSTANCE` | `string` | Nome da Instância. |
| `USUARIO` | `string` | Nome usuário (caixa postal) ou Módulo. |
| `CONEXAO` | `string` | Informações detalhadas do processo de transferência ou roteamento (STCPREN). |
| `DATAARQUIVO` | `string` | Data do arquivo. |
| `EVENTO` | `integer` | Código da operação realizada (`5` – Transmissão, `7` - Recepção). |
| `HORAARQUIVO` | `string` | Hora do arquivo. |
| `MAXTAMREG` | `integer` | Quantidade de caracteres (bytes) que compõem o registo Fixo ou Variável (LRECL). |
| `MENSAGEM` | `string` | Mensagem do sistema. |
| `NOMEARQUIVO` | `string` | Nome do arquivo. |
| `TAGS` | `string` | Tags do tipo de arquivo. |
| `PROCID` | `integer` | Código interno do processo. |
| `REDE` | `string` | Rede/Função STCP utilizada. |
| `RESULTADO` | `integer` | Código de retorno do processo (Return Code): `0` – Sucesso ou retorna o código do erro na transferência. |
| `TAMARQUIVO` | `integer` | Tamanho do arquivo. |
| `THREADID` | `integer` | Thread que executou o processo. |
| `TIPOREC` | `string` | Formato do registro (RECFM). |
| `DIAS` | `integer` | Número de dias desde a ocorrência. |

## Exemplo de Resposta (Sucesso com Dados)

```json
{
  "data": [
    {
      "DATAHORA": "2025-12-19T15:18:53Z",
      "INSTANCE": "STCPGEMINI",
      "USUARIO": "01USER",
      "CONEXAO": "[TCP-IN-oTLS] R:203.0.113.45:10400 L:198.51.100.10:6619",
      "DATAARQUIVO": "20251219",
      "EVENTO": 5,
      "HORAARQUIVO": "1513573419",
      "MAXTAMREG": 0,
      "NUMREG": 0,
      "MENSAGEM": "Fim de transmissao",
      "NOMEARQUIVO": "/stcp/data/STCPGEMINI/01USER/SAIDA/file.txt",
      "TAGS": "",
      "PROCID": 45325,
      "REDE": "IN",
      "RESULTADO": 0,
      "TAMARQUIVO": 7972,
      "THREADID": 3699586,
      "TIPOREC": "U",
      "DIAS": 0
    }
  ],
  "next": "/reports/v2/transfers?end=1786579199000&events=&index=4441011&limit=2&start=1704078000000"
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
/reports/v2/transfers?end=1786579199000&events=&index=4441011&limit=2&start=1704078000000
```

## Códigos de Status da Resposta

| Código | Descrição |
|---:|---|
| `200` | Sucesso – A requisição foi processada com êxito. |
| `400` | Requisição inválida – Parâmetros incorretos ou formato de requisição inválido. |
| `401` | Não autorizado – Token de autenticação inválido ou ausente. |
| `500` | Erro interno do servidor – Ocorreu um erro inesperado no servidor. |
