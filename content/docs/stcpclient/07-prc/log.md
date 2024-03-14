---
linkTitle: Arquivos de Log
layout: docs
cascade:
  type: docs
sidebar:
  exclude: false
weight: 5
prev:
next: /docs/stcpserver
slug: arquivos-log
draft: false
---
# Arquivos de Log da Aplicação

Os logs do STCP OFTP estão divididos em duas categorias:

## Logs do Sistema

Disponíveis na pasta **Log** do diretório de instalação do STCP OFTP Client (Ex. C:\STCPCLT\Log) e são criados diariamente. Registram as informações referentes aos eventos do SISTEMA.

- Início/Fim do STCP OFTP;
- Início/Fim de Execução de Comando Externo;
- Início e Término da Agenda;
- Erros do Sistema em geral.

A nomenclatura dos arquivos de log, segue o padrão abaixo:

```
YYYYMMDD.log.txt
YYYYMMDD.msg.txt
```

## Logs da Comunicação

Disponíveis na pasta Log do perfil correspondente à caixa postal utilizada (Ex. C:\STCPCLT\NOMEPERFIL\LOG) . Registram as informações referentes aos eventos do processo de transferências de um determinado perfil. Cada perfil, registrado no sistema (guia Perfis), possui uma pasta Log correspondente.

- Os eventos listados nestes arquivos podem ser:
- Início/Fim de Conexão Entrante ou Sainte;
- Início/Fim de Sessão;
- Início/Fim de Transmissão ou Recepção de arquivos;
- Erros no processo de transferência.

A nomenclatura dos arquivos de log, segue o padrão abaixo:

```
YYYYMMDD.NOME-PERFIL.msg.txt
```



