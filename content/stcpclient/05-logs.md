---
linkTitle: Logs
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 5
prev: 
next: 
draft: false
slug: logs
lastmod: 2025-02-01
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

Os eventos listados nestes arquivos podem ser:
- Início/Fim de Conexão Entrante ou Sainte;
- Início/Fim de Sessão;
- Início/Fim de Transmissão ou Recepção de arquivos;
- Erros no processo de transferência.

A nomenclatura dos arquivos de log, segue o padrão abaixo:

```
YYYYMMDD.NOME-PERFIL.msg.txt
```

## Registro de Sessões e Transferências

O STCP OFTP Client gera um arquivo diário de auditoria contendo as informações correspondentes ao início e final da sessão, início e final da transferência.

Através destes arquivos é possível criar **relatórios** e **estatísticas** de utilização do serviço.

O arquivo de auditoria é armazenado no subdiretório de controle **LOG** com a seguinte nomenclatura: **YYYYMMDD.log.txt**, cada linha do arquivo é um registro de formato fixo, contendo as informações descritas a seguir:


### Formato do arquivo de Auditoria

Sequência| Tamanho| Formato| Descrição
:---     | :---   | :---   | :---
1        | 14     | N      | Data e hora da ocorrência (YYYYMMDDhhmmss).
2        | 4      | N      | Código da operação relacionada a este registro: <br> /0000 – Início de sessão de entrada <br>/0001 – Fim de sessão de entrada <br> /0002 – Início de sessão de saída <br> /0003 – Fim de sessão de saída <br> /0004 – Início de transmissão do arquivo <br> /0005 – Fim de transmissão do arquivo <br> /0006 – Início de recepção do arquivo <br> /0007 – Fim de recepção do arquivo
3        | 30     | X      | Nome do Perfil
4        | 16     | X      | Nome do processo de comunicação
5        | 8      | X      | Código do processo
6        | 8      | X      | Código da thread
7        | 6      | N      | Resultado /000000 – Sucesso
8        | 12     | N      | Tamanho do arquivo
9        | 256    | X      | Nome do arquivo
10       | 128    | X      | Informações gerais