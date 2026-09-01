---
title: "Requisitos"
# sidebar:
#   exclude: true
cascade:
  type: docs
weight: 30
next: database
prev: security
---
<!-- <meta http-equiv="refresh" content="0;url=overview/" /> -->

## Pré-requisitos de instalação

Antes de iniciar a instalação da plataforma STCP Gemini, certifique-se de que o ambiente atende aos requisitos mínimos de hardware, sistema operacional, banco de dados e demais dependências descritas nesta seção.

## Hardware

- Processador de 2 GHz ou superior
- 4 GB de memória RAM ou superior
- Mínimo de 200 MB de espaço livre em disco para a instalação do software

> [!NOTE]
> O espaço em disco necessário para arquivos, logs e dados operacionais deve ser dimensionado de acordo com o volume de processamento do ambiente.


## Sistemas operacionais suportados

- Red Hat Enterprise Linux (RHEL): versões 8.x, 9.x e 10.x
- Oracle Linux: versões 8.x, 9.x e 10.x
- Rocky Linux: versões 8.x, 9.x e 10.x
- AlmaLinux: versões 8.x, 9.x e 10.x
- Amazon Linux: Amazon Linux 2023
- Outras distribuições Linux, mediante validação de compatibilidade

> [!NOTE]
> Recomenda-se utilizar a versão mais recente disponível dentro de cada versão principal suportada, mantendo o sistema operacional atualizado com as correções de segurança e manutenção fornecidas pelo fabricante.

## Bancos de dados suportados

A plataforma STCP Gemini é compatível com os seguintes sistemas de gerenciamento de banco de dados:

- Microsoft SQL Server 2019 ou superior
- Oracle Database 19c ou superior
- MySQL 8.4 LTS ou superior
- MariaDB 10.11 ou superior

Antes de iniciar a instalação dos componentes da plataforma STCP Gemini, o banco de dados deve estar previamente disponível e acessível a partir dos servidores onde os componentes serão instalados.

Consulte a seção [**Preparação do ambiente - Banco de dados**](https://localhost:1313/stcp-gemini/install/getting-started/database/) para obter as orientações e os scripts necessários à criação e preparação das estruturas de banco de dados utilizadas pela plataforma STCP Gemini.

