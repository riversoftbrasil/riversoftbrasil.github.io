---
linkTitle: Modo de execução
title: Execução e Utilização
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 3
prev: /02-config-sgc/
next: /04-log-sgc/
draft:
lastmod: 2024-06-21
---
Para executar a aplicação, através do terminal, utilize a linha de comando abaixo.

```
$ stcpclient -p O0055NOMEPERFIL -r 1
/usr/local/stcpclient/configs/stcpclient.config.json
```

Após a execução do STCP Gemini Client, assim que a conexão com servidor for estabelecida com sucesso, os arquivos serão enviados e/ou
recebidos automaticamente.

![](img/sgc-04.png)

## Enviar e receber arquivos

Os arquivos que serão **enviados** deverão ser disponibilizados na pasta *SAIDA* da aplicação.

```
/usr/local/stcpclient/data/STCPClt/O0055NOMEPERFIL/SAIDA
```

Em seguida, execute o STCP Gemini Client conforme descrito acima.

> **Nota:** Todos os arquivos que estiverem na pasta SAIDA serão enviados.
Os arquivos enviados com sucesso serão removidos automaticamente da pasta de SAIDA.


Ao executar o STCP Gemini Client, os arquivos que forem **recebidos** ficarão disponíveis na pasta *ENTRADA* da aplicação.

```
/usr/local/stcpclient/data/STCPClt/O0055NOMEPERFIL/ENTRADA
```

## Execução do STCP Gemini Client através do Cron

É possível automatizar a execução do STCP Gemini Client utilizando ferramentas de agendamento que permitem controlar tarefas a serem executadas em tempos pré-configurados, como por exemplo, o Cron.

```
$ sudo cat /etc/crontab
0 0 * * * /bin/bash -l -c "PATH=\"$PATH:/usr/local/bin\"; stcpclient -p
O0055NOMEPERFIL -r 1 /usr/local/stcpclient/configs/stcpclient.config.json”
```
