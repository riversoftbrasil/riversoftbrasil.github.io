---
linkTitle: Execução
layout: docs
cascade:
  type: docs
sidebar:
  exclude: false
weight: 4
prev: /stcpserver/02-config
next: /stcpserver/05-debug
draft: false
slug: utilizacao
---

## Linha de comando

A sintaxe para executar o STCP OFTP Server através de uma linha de comando é a seguinte:

```pshell
CTCPSVC.EXE <Arquivo de configuração> [-addservice|-delservice|-noservice]
```
| Parâmetro                 | Descrição                                                                                 |
| :------------------------ | :---------------------------------------------------------------------------------------- |
| <arquivo de configuração> | Define o nome do arquivo de configuração de instalação "CTCP.INI" com o caminho completo. |
| -addservice               | Adiciona o STCP OFTP Server como um serviço do sistema operacional.                       |
| -delservice               | Remove o STCP OFTP Server como um serviço do sistema operacional.                         |
| -noservice                | Executa o STCP OFTP Server como uma aplicação.                                            |

Exemplo:

```pshell
C:\STCPODT\Program\ctcpsvc.exe C:\STCPODT\CTCP.INI –noservice
```
No exemplo acima, o STCP OFTP Server será executado como uma **aplicação**.



