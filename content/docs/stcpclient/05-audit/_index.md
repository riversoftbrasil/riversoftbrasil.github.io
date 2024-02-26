---
linkTitle: Arquivo de auditoria
layout: docs
cascade:
  type: docs
sidebar:
  exclude: false
weight: 5
prev:
next:
---
# Arquivo de auditoria

O STCP OFTP Client gera um arquivo diário de auditoria contendo as informações correspondentes ao início e final da sessão, início e final da transferência. Através destes arquivos é possível criar relatórios e estatísticas de utilização do serviço.

O arquivo de auditoria é armazenado no subdiretório de controle **LOG** com a seguinte nomenclatura: **YYYYMMDD.log.txt**, cada linha do arquivo é um registro de formato fixo, contendo as informações descritas a seguir:


### Formato do arquivo de Auditoria

Sequência| Tamanho| Formato| Descrição
:---     | :---   | :---   | :---
1        | 14     | N      | Data e hora da ocorrência (YYYYMMDDhhmmss).
2        | 4      | N      | Código da operação relacionada a este registro: /0000 – Início de sessão de entrada /0001 – Fim de sessão de entrada /0002 – Início de sessão de saída /0003 – Fim de sessão de saída /0004 – Início de transmissão do arquivo /0005 – Fim de transmissão do arquivo /0006 – Início de recepção do arquivo /0007 – Fim de recepção do arquivo
3        | 30     | X      | Nome do Perfil
4        | 16     | X      | Nome do processo de comunicação
5        | 8      | X      | Código do processo
6        | 8      | X      | Código da thread
7        | 6      | N      | Resultado /000000 – Sucesso
8        | 12     | N      | Tamanho do arquivo
9        | 256    | X      | Nome do arquivo
10       | 128    | X      | Informações gerais
