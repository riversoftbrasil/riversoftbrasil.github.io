---
linkTitle: Como executar
layout: docs
cascade:
  type: docs
sidebar:
  exclude: false
weight: 3
prev: /docs/stcpdirectlink/02-configuration
next: /docs/stcpdirectlink/04-portal/
slug: como-executar
draft: false
---
## Linha de comando

``` bash
STCPDirectLinkSrv-go [parametros]
```

Parâmetro                       | Descrição
----                            | ----
-config \<nome do arquivo>      | Informa o nome do arquivo de configuração
-noService                      | Executa no modo de aplicação
-installService                 | Instala o serviço da aplicação (windows)
-removeService                  | Remove o serviço da aplicação (windows)
-lang \<linguagem>              | Define a lingua utilizada para o registro de eventos e logs (ptb=português, esp=espanhol e enu=ingles)
-langFile \<nome do arquivo>    | Define o arquivo de mensagens

**Exemplos:**

``` bash
STCPDirectLinkSrv-go.exe -installService
```
```
STCPDirectLinkSrv-go.exe -config c:/stcpdirectlink/config.json -installService
```
```
STCPDirectLinkSrv-go.exe -removeService
```
```
STCPDirectLinkSrv-go.exe -config c:/stcpdirectlink/config.json -removeService
```
```
STCPDirectLinkSrv-go.exe -noService
```
```
STCPDirectLinkSrv-go.exe -config c:/stcpdirectlink/config.json -noService
```
