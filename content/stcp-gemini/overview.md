---
title: "Visão Geral"
weight: 10
cascade:
  type: docs
---
<!-- <meta http-equiv="refresh" content="0;url=overview/" /> -->

{{< callout type="warning" >}}
Esta documentação está **em desenvolvimento** e pode sofrer alterações à medida que conteúdos, configurações, recursos e funcionalidades da plataforma STCP Gemini forem revisados, atualizados ou adicionados.
{{< /callout >}}

## Objetivo

Esta seção apresenta a plataforma STCP Gemini e fornece uma visão geral de seus principais componentes, recursos e conceitos. Também orienta sobre os primeiros passos necessários para preparar, instalar e configurar a plataforma.

## O que é a plataforma STCP Gemini?

O **STCP Gemini** é a plataforma de MFT (Managed File Transfer) da Riversoft, desenvolvida para realizar transferências e integrações de arquivos com alto nível de segurança, confiabilidade e desempenho.

A plataforma foi projetada para atender ambientes corporativos e operações críticas que exigem controle, rastreabilidade e escalabilidade na movimentação de arquivos entre sistemas, organizações, clientes e parceiros.

Entre suas principais capacidades, destacam-se:

- Auditoria e rastreabilidade de ponta a ponta
- Transferências seguras e escaláveis
- Automação dos fluxos de transferência e processos
- Integração com sistemas e aplicações externas
- Suporte a múltiplos protocolos e serviços de armazenamento
- Administração e supervisão centralizadas

O STCP Gemini possui uma arquitetura composta por diferentes serviços e componentes que trabalham de forma integrada para atender aos processos de transferência, administração, integração e disponibilização segura de arquivos.

## Arquitetura da plataforma

A plataforma STCP Gemini possui uma arquitetura modular, composta por serviços destinados à transferência de arquivos, administração, integração com aplicações externas e disponibilização segura de arquivos.

Essa organização permite que os diferentes componentes da plataforma sejam utilizados de forma integrada, de acordo com as necessidades de cada ambiente.

Em alto nível, a plataforma é formada pelos seguintes grupos de componentes:

- **STCP Gemini Core** — concentra as funcionalidades e os serviços essenciais da plataforma.
- **STCP Gemini API** — disponibiliza interfaces para gestão, supervisão, auditoria e integração com aplicações externas.
- **STCP Gemini Portal** — fornece uma interface web para administração e supervisão do ambiente.
- **STCP Directlink** — disponibiliza serviços para transferência segura de arquivos.
- **STCP Directlink API** — fornece APIs para operações de download, upload e integração com aplicações externas.
- **STCP Directlink Portal** — disponibiliza uma interface web para download e upload seguro de arquivos.
- **STCP Gemini Rename (STCPRen)** - componente utilizado para automação e gerenciamento de fluxos de arquivos.

## Integração e transferência de arquivos

A plataforma suporta diferentes protocolos e conectores, permitindo sua integração com ambientes corporativos, parceiros externos e serviços de armazenamento.

### Protocolos em modo servidor

O STCP Gemini pode disponibilizar serviços de transferência utilizando:

- OFTP 2.0 (Odette File Transfer Protocol)
- SFTP (SSH File Transfer Protocol)
- AS2 (Applicability Statement 2)

### Protocolos e conectores em modo cliente

Para conexões com sistemas e serviços externos, estão disponíveis:

- OFTP 2.0 (Odette File Transfer Protocol)
- SFTP (SSH File Transfer Protocol)
- FTPS (File Transfer Protocol Secure)
- FTP (File Transfer Protocol)
- AS2 (Applicability Statement 2)
- Amazon Simple Storage Service (Amazon S3)
- Microsoft Azure Blob Storage
- Google Cloud Storage
- Oracle Cloud Object Storage
- Outros conectores suportados pela plataforma

Essa arquitetura permite integrar o STCP Gemini a diferentes tecnologias e fluxos de transferência, mantendo a administração e supervisão dos processos de forma centralizada.

{{< callout type="info" >}}
A disponibilidade de protocolos, conectores e funcionalidades pode variar de acordo com os componentes instalados e a versão da plataforma.
{{< /callout >}}

## Componentes

A plataforma STCP Gemini é composta por diferentes componentes que atuam de forma integrada para fornecer os recursos de transferência, administração, supervisão e integração da plataforma.

### STCP Gemini Server

O **STCP Gemini Server** é o núcleo da plataforma e concentra as funcionalidades e os serviços essenciais necessários ao funcionamento do ambiente.

Ele é responsável por fornecer a base para os demais componentes e serviços do STCP Gemini.

### STCP Gemini API

A **STCP Gemini API** disponibiliza APIs para integração com aplicações e sistemas externos.

Por meio dessas interfaces, é possível implementar integrações relacionadas a:

- Gestão
- Supervisão
- Auditoria
- Automação
- Integração com aplicações de terceiros

A documentação dos recursos e endpoints disponíveis pode ser consultada na seção **Referência da API**.

### STCP Gemini Portal

O **STCP Gemini Portal** é a interface web utilizada para administração e supervisão do ambiente STCP Gemini.

Por meio do portal, administradores e operadores podem acessar os recursos de gestão e acompanhar os processos relacionados às transferências de arquivos.

As funcionalidades e os procedimentos de utilização da interface estão descritos no **Guia do STCP Gemini Portal**.

### STCP Directlink

O **STCP Directlink** fornece recursos para transferência segura de arquivos por diferentes canais, incluindo:

- HTTPS
- SFTP
- E-mail seguro
- WhatsApp

### STCP Directlink API

A **STCP Directlink API** disponibiliza interfaces para operações de:

- Download de arquivos
- Upload de arquivos
- Integração segura com aplicações externas

### STCP Directlink Portal

O **STCP Directlink Portal** é a interface web destinada às operações de download e upload seguro de arquivos.

Ele complementa os serviços disponibilizados pelo STCP Directlink, permitindo que essas operações sejam realizadas por meio de uma interface web.

### STCP Gemini Rename

O **STCP Gemini Rename (STCPRen)** é o componente utilizado para automação e gerenciamento de fluxos de arquivos.

Por meio de roteamentos e regras, permite identificar arquivos e executar automaticamente ações como renomeação, movimentação, cópia, backup, validação e execução de processos externos.