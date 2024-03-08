---
linkTitle: STCP Directlink
layout: docs
cascade:
  type: docs
sidebar:
  exclude: false
weight: 3
prev:
next: /01-install/requirements/
---
# Introdução

## O que é o STCP Directlink?

O STCP Directlink é uma aplicação que, ao ser integrada aos produtos STCP OFTP Server (Windows) ou STCP Gemini Server (Linux), oferece uma solução simples e robusta para transferência segura de arquivos (Download e Upload) através dos protocolos **HTTPS** e **SFTP**.

{{< callout type="info" >}}
  Disponível nas versões para Windows e Linux.
{{< /callout >}}

## Por que usar?

Todo o processo de transferência, através do STCP Directlink, pode ser totalmente rastreado, com as informações de usuário, data e hora em que os eventos ocorreram, filtro de arquivos, filtro de horário, roteamento e muito mais.

## Recursos
Entre alguns dos recursos disponíveis no STCP Directlink estão:

- SFTP Server
- Conector AWS Simple Storage Service (S3)
- Conector Microsoft Azure Blob Storage
- Conector Oracle Cloud Object Storage
- Google Cloud Storage
- API para **download** e **upload** de arquivos
- Link seguro para compartilhamento de arquivos
- Portal Web para **upload** e **download** de arquivos

## Segurança e conformidade

- Utiliza TLS 1.2/1.3 para atender às necessidades de intercâmbio de informações de forma segura através da Internet.
- Total suporte à utilização de certificados digitais.
- Autenticidade, Confidencialidade, Integridade e Rastreabilidade na troca de arquivos, atendendo requisitos vigentes da **LGPD/GDPR**​.
- Baseado na tecnologia de criptografia (Assimétrica e Simétrica).
- Garante a autenticidade (Algoritmos **RSA/DSA**).
- Garante a confidencialidade (Algoritmos **AES/AES128/AES256**).
- Garante a integridade (Algoritmos **SHA1/SHA256/SHA384**).
- Políticas de segurança no controle de autenticação.
- Restrições de **tamanho** e **tipo de arquivo**.
- Auditoria e rastreabilidade.
- Autenticação robusta (OAuth, JWT)
- Suporte Single Sign-On (SSO)

