---
linkTitle: Instalação
title: Instalação
excludeSearch: false
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 1
prev:
next:
slug: instalacao
draft:
---
Após [configurar o repositório](/stcpgeminiserver/implantacao/sgs-install/#configuração-do-repositório-yum-riversoft), instale o STCP Gemini API executando o comando abaixo:

```bash
$ yum install stcpgemini-api
```

## Criação das bases de dados

Tendo em mãos as credenciais necessárias para acesso ao Sistema Gerenciador de Banco de Dados (SGBD), crie as bases de Configuração (Ex: STCPCFG_DB) e Registro de Logs (Ex: STCPLOG_DB).

Confira quais bancos de dados homologados o STCP pode conectar-se <a href="/utils/database/" target="_blank">aqui.</a> {{< icon "arrow-top-right-on-square" >}} &nbsp;

> DICA: O comando para criação dos databases é:

```sql
CREATE DATABASE STCPCFG_DB
CREATE DATABASE STCPLOG_DB
```
## Execução dos scripts de criação das tabelas no banco de dados

Com o STCP Gemini API instalado, já é possível executar os scripts para criar as tabelas no banco de dados seguindo os passos a
abaixo:

No banco de dados, execute os scripts localizados em */usr/local/stcpgemini-api/install/scripts/DDL/MySQL* para criação das tabelas e triggers de configuração (STCPCFG_DB) e logs (STCPLOG_DB).

Em seguida acesse */usr/local/stcpgemini-api/install/scripts/DUMP/MySQL* e execute os scripts para inserir os códigos de erros e eventos no database STCPCFG_DB.

> DICA: Na inserção dos códigos de erros e eventos, verifique a linguagem desejada (Disponível em PTB, ESP e ENU)
