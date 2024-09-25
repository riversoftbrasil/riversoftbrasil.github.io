---
linkTitle: 
title: Arquivos de Log
excludeSearch: true
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false  
weight: 4
prev: 03-exec-sgc-bradesco/
next: 
slug: 
draft: false 
lastmod: 2024-07-26
---

Todo o processo de conexão e transferência de arquivos do STCP Gemini Client é registrado em arquivos de log. 

A aplicação cria um conjunto de arquivos de texto diário contendo as informações de cada conexão, envio e recepção de arquivos. 

Através dos arquivos de log é possível auditar todos os eventos de comunicação e ocorrências de sucesso e/ou falhas no processo de transferência.

![](image-01.png)

Os arquivos de log são armazenados na pasta LOG.

```
/usr/local/stcpclient/logs
```

![](image-02.png)

Para mais detalhes consulte a documentação do produto:
[STCP Gemini Client](/stcpgeminiclient/)

