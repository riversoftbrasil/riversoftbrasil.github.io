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

Antes de iniciar a instalação da plataforma STCP Gemini, certifique-se de que o ambiente atende aos requisitos de hardware, sistema operacional, banco de dados e demais dependências aplicáveis ao componente que será instalado.

## Hardware

Os requisitos mínimos de hardware para os componentes da plataforma STCP Gemini são:

- Processador de 2 GHz ou superior
- 4 GB de memória RAM ou superior
- Mínimo de 200 MB de espaço livre em disco para a instalação do software

> [!NOTE]
> O espaço em disco necessário para arquivos, logs e dados operacionais deve ser dimensionado de acordo com o volume de processamento do ambiente.

## Sistemas operacionais suportados

Os sistemas operacionais suportados variam de acordo com o componente STCP Gemini.

### STCP Gemini Server, API, Portal e Directlink

Os seguintes sistemas operacionais são suportados:

- Red Hat Enterprise Linux (RHEL): versões 8.x, 9.x e 10.x
- Oracle Linux: versões 8.x, 9.x e 10.x
- Rocky Linux: versões 8.x, 9.x e 10.x
- AlmaLinux: versões 8.x, 9.x e 10.x
- Amazon Linux: Amazon Linux 2023
- Outras distribuições Linux, mediante validação de compatibilidade

> [!NOTE]
> Recomenda-se utilizar a versão mais recente disponível dentro de cada versão principal suportada, mantendo o sistema operacional atualizado com as correções de segurança e manutenção fornecidas pelo fabricante.

### STCP Gemini Client

O STCP Gemini Client possui suporte às seguintes distribuições Linux:

- Red Hat Enterprise Linux (RHEL): versões 7, 8 e 9
- Oracle Linux: versões 7, 8 e 9
- Rocky Linux: versões 8 e 9
- Amazon Linux: versões 2 e 2023
- Debian: versões 11 e 12
- Ubuntu: versões 18.04, 20.04, 22.04 e 24.04

Essas são as distribuições homologadas na documentação atual do STCP Gemini Client.

> [!NOTE]
> Recomenda-se utilizar versões do sistema operacional que ainda estejam dentro do ciclo de suporte do respectivo fabricante.

## Dependências do STCP Gemini Client

O STCP Gemini Client utiliza bibliotecas adicionais necessárias para sua instalação e execução.

Entre as principais dependências estão:

- OpenSSL
- libssh
- PCRE2
- libargon2

A documentação atual do STCP Gemini Client identifica essas bibliotecas como pré-requisitos para implantação do produto.

A instalação e a origem dessas dependências variam de acordo com a distribuição Linux utilizada.

> [!NOTE]
> Em distribuições baseadas em Enterprise Linux, algumas dependências podem ser disponibilizadas através do repositório EPEL. Em sistemas Ubuntu e Debian, as dependências são disponibilizadas através do gerenciador de pacotes APT.

Os comandos necessários para instalação das dependências são apresentados na seção de instalação do STCP Gemini Client.

## Bancos de dados suportados

O banco de dados é utilizado pelos seguintes componentes da plataforma STCP Gemini:

- STCP Gemini Server
- STCP Gemini API
- STCP Gemini Portal
- STCP Gemini Directlink

Esses componentes são compatíveis com os seguintes sistemas de gerenciamento de banco de dados:

- Microsoft SQL Server 2019 ou superior
- Oracle Database 19c ou superior
- MySQL 8.4 LTS ou superior
- MariaDB 10.11 ou superior

Antes de iniciar a instalação desses componentes, o banco de dados deve estar disponível e acessível a partir do ambiente onde a plataforma será instalada.

Consulte a seção **[Preparação do banco de dados](/stcp-gemini/install/getting-started/database/)** para obter os scripts necessários à criação do banco de dados e das estruturas utilizadas pela plataforma STCP Gemini.

> [!NOTE]
> O STCP Gemini Client não utiliza banco de dados e, portanto, não requer a configuração de um SGBD para sua instalação ou operação.