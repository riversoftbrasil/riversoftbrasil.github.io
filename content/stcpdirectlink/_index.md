---
linkTitle: STCP Directlink
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 3
prev: /docs/
next: /stcpdirectlink/01-install
# slug: stcpdirectlink
draft: false
lastmod: 2024-09-09
---
## O que é o STCP Directlink?

O STCP Directlink é uma aplicação que, ao ser integrada aos produtos <a href="/stcpserver/" target="_blank">STCP OFTP Server (Windows)</a> {{< icon "arrow-top-right-on-square" >}} ou STCP Gemini Server (Linux), oferece uma solução simples e robusta para transferência segura de arquivos (Download e Upload) através dos protocolos <a href="/utils/protocols/#httphttps" target="_blank">HTTPS</a> e <a href="/utils/protocols/#sftp" target="_blank">SFTP</a>.

{{< callout type="info" >}}
  Disponível nas versões para Windows e Linux.
{{< /callout >}}

## Por que usar?

Todo o processo de transferência, através do STCP Directlink, pode ser totalmente rastreado, com as informações de usuário, data e hora em que os eventos ocorreram, filtro de arquivos, filtro de horário, roteamento e muito mais.

Com o Riversoft® STCPDirectLink é possível realizar o **upload** de um arquivo e **notificar através de email ou sms (celular)** um contato para receber o **link seguro** para download.

{{< callout type="info" >}}
  O **link seguro** para **download** identifica qual a **conta de email** ou **número do celular** está vinculado ao arquivo e só permite o **download** com a utilização de um **código de segurança**.
{{< /callout >}}

{{< callout type="" >}}
O código de segurança é encaminhado somente para o **email** ou **celular** vinculado ao arquivo e tem um **tempo de vida**.
{{< /callout >}}

Para possibilitar a integração de forma ágil, o STCP DirectLink disponibiliza uma [API](/stcpdirectlink/05-api/) (Application Program Interface) no padrão [RestFull](https://restfulapi.net/) através do protocolo **HTTPS**.

## Recursos
Entre alguns dos recursos disponíveis no STCP Directlink estão:

- SFTP Server
- Conector **AWS Simple Storage Service (S3)**
- Conector **Microsoft Azure Blob Storage**
- Conector Oracle Cloud Object Storage
- [Google Cloud Storage](https://cloud.google.com/)
- API para **download** e **upload** de arquivos
- Link seguro para compartilhamento de arquivos
- Portal Web para **upload** e **download** de arquivos

{{< callout type="info">}}
Clique [aqui](https://docs.aws.amazon.com/pt_br/AmazonS3/latest/userguide/Welcome.html) para mais informações sobre o **Amazon Simple Storage Service (S3)**.
{{< /callout >}}

{{< callout type="info" >}}
  Clique [aqui](https://azure.microsoft.com/pt-br/products/storage/blobs) para mais informações sobre o **Armazenamento de Blobs do Azure**.
{{< /callout >}}

## Segurança e Privacidade

A segurança é um dos pilares do **STCP DirectLink**. Todas as transações são criptografadas, e o sistema oferece uma arquitetura de autenticação robusta, assegurando que apenas usuários autorizados tenham acesso às funcionalidades. Além disso, **não utilizamos cookies**, proporcionando um ambiente mais privado e sem o uso de mecanismos de rastreamento.

- Utiliza **TLS 1.2/1.3** para atender às necessidades de intercâmbio de informações de forma segura através da Internet.
- Total suporte à utilização de **certificados digitais**.
- Autenticidade, Confidencialidade, Integridade e Rastreabilidade na troca de arquivos, atendendo requisitos vigentes da **LGPD/GDPR**​.
- Baseado na tecnologia de criptografia **(Assimétrica e Simétrica)**.
- Garante a autenticidade (Algoritmos **RSA/DSA**).
- Garante a confidencialidade (Algoritmos **AES/AES128/AES256**).
- Garante a integridade (Algoritmos **SHA1/SHA256/SHA384**).
- Políticas de segurança no controle de autenticação.
- Restrições de **tamanho** e **tipo de arquivo**.
- Auditoria e rastreabilidade.
- Autenticação robusta **(OAuth, JWT)**
- Suporte Single Sign-On **(SSO)**

