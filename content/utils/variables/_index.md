---
linkTitle: Variáveis internas
title:
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 16
prev: /conection
next:
draft: false
lastmod: 2024-05-10
---
## Variáveis internas do STCP OFTP Server

As variáveis internas do STCP OFTP Server podem ser utilizadas como parâmetros para os comandos externos.

Variável  | Descrição
:---      | :---
$DEFPARAM | Variável que contém o valor padrão para o comando externo.
$DIRSYS   | Variável que contém o nome do diretório de controle.
$DIRDATA  | Variável que contém o nome do diretório de dados.
$LUSERID  | Variável que contém o nome do usuário.
$LFNAME   | Variável que contém o nome completo do arquivo local.
$OFNAME   | Variável que contém o nome do arquivo ODETTE.
$OFTYPE   | Variável que contém o tipo de registro do arquivo ODETTE.
$OFRECLEN | Variável que contem o tamanho do registro do arquivo ODETTE.
$OFSIZE   | Variável que contém o tamanho aproximado do arquivo ODETTE.
$OFDATE   | Variável que contém a data do arquivo ODETTE.
$OFTIME   | Variável que contém a hora do arquivo ODETTE.
$OFUSERDATA| Variável que contém o userdata do arquivo ODETTE.
$OFORIGINATOR| Variável que contém a origem do arquivo ODETTE.
$OFDESTINATION| Variável que contém o destino do arquivo ODETTE.

## Definição do valor padrão do parâmetro

Executar comando para:| Valor padrão do parâmetro.
:---                  | :---
**Início da conexão** | Nome do diretório de dados do usuário.
**Fim da conexão**    | Nome do diretório de dados do usuário.
**Fim da transmissão do arquivo**| Nome completo do arquivo.
**Fim da recepção do arquivo**| Nome completo do arquivo.
**Ler o arquivo**     | Nome completo do arquivo.
**Gravar o arquivo**  | Nome completo do arquivo.
**Agenda**            | Nome da agenda.
**Eventos (LOG)**     | Linha com detalhes do evento.
