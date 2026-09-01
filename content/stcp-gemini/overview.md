---
title: "Visão Geral"
weight: 10
# lastmod: 2026-09-01
cascade:
  type: docs
contextMenu: false
---
<!-- <meta http-equiv="refresh" content="0;url=overview/" /> -->

{{< callout type="warning" >}}
Esta documentação está **em desenvolvimento** e pode sofrer alterações à medida que conteúdos, configurações, recursos e funcionalidades da plataforma STCP Gemini forem revisados, atualizados ou adicionados.
{{< /callout >}}

## Objetivo

Esta seção apresenta a plataforma STCP Gemini e fornece uma visão geral de seus principais componentes, recursos e conceitos. Também orienta sobre os primeiros passos necessários para preparar, instalar e configurar a plataforma.

## O que é a plataforma STCP Gemini?

O **STCP Gemini** é a plataforma de **MFT (Managed File Transfer)** da Riversoft, desenvolvida para realizar transferências e integrações de arquivos com segurança, confiabilidade e alto desempenho.

Projetada para ambientes corporativos e operações críticas, a plataforma oferece:

* Auditoria e rastreabilidade de ponta a ponta
* Transferências seguras e escaláveis
* Automação de fluxos e processos
* Integração com sistemas e aplicações externas
* Suporte a múltiplos protocolos e serviços de armazenamento
* Administração e supervisão centralizadas

## Arquitetura da plataforma

O STCP Gemini possui uma **arquitetura baseada em microserviços**, composta por serviços especializados que atuam de forma integrada nas funções de transferência, processamento, integração e administração.

Essa arquitetura proporciona flexibilidade e escalabilidade, mantendo a **configuração, supervisão e rastreabilidade das operações de forma centralizada**.


## Integração e transferência de arquivos

A plataforma suporta diferentes protocolos e conectores, permitindo sua integração com ambientes corporativos, parceiros externos e serviços de armazenamento.

### Protocolos e Conectores

| Conector / Protocolo                      | Modo servidor | Modo cliente |
| ----------------------------------------- | :-----------: | :----------: |
| OFTP 2.0 (Odette File Transfer Protocol)  |       ✓       |       ✓      |
| SFTP (SSH File Transfer Protocol)         |       ✓       |       ✓      |
| AS2 (Applicability Statement 2)           |       ✓       |       ✓      |
| FTPS (File Transfer Protocol Secure)      |       —       |       ✓      |
| FTP (File Transfer Protocol)              |       —       |       ✓      |
| Amazon Simple Storage Service (Amazon S3) |       —       |       ✓      |
| Microsoft Azure Blob Storage              |       —       |       ✓      |
| Google Cloud Storage                      |       —       |       ✓      |
| Oracle Cloud Object Storage               |       —       |       ✓      |

{{< callout type="info" >}}
Outros conectores podem estar disponíveis de acordo com a versão e a configuração da plataforma.
{{< /callout >}}

## Componentes

A plataforma STCP Gemini é composta por diferentes componentes que atuam de forma integrada para fornecer os recursos de transferência, administração, supervisão e integração da plataforma.

### STCP Gemini Server

O **STCP Gemini Server** é o componente responsável pelas transferências de arquivos via OFTP, podendo operar como servidor e cliente OFTP, além de atuar como cliente SFTP.

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

O **STCP Gemini Rename (STCPRen)** é o componente responsável pelo roteamento e automação de operações com arquivos.