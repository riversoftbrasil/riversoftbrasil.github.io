---
linkTitle: Configuração
title: Configuração do Gemini Client
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 3
prev: /01-install-sgc/
next: /03-exec-sgc/
slug: configuracao
lastmod: 2024-06-21
---

Toda a configuração da aplicação será realizada através do *STCP Gemini Client Config*. Não é necessária a utilização do super-usuário (root) para a configuração.

![](img/sgc-02.png)

## Arquivo JSON

Siga os passos abaixo para criar o arquivo de configuração da aplicação.

```
$ cd /usr/local/stcpclient/configs/
$ cp example-stcpclient.config.json stcpclient.config.json
```
Execute o configurador do STCP Gemini Client e siga os passos exibidos na tela para concluir a configuração.

```
$ stcpclient-config init
```

![](img/sgc-03.png)
