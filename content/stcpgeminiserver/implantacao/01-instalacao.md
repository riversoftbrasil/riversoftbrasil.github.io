---
linkTitle: Instalação
title: Instalação do Gemini Server
excludeSearch: true
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 1
prev: stcpgeminiserver/implantacao
next:
slug: instalacao
lastmod: 2024-06-13
---
## Requisitos de Software

Verifique os requisitos para instalação na seção <a href="/utils/requirements/#stcp-gemini-server" target="_blank">Requisitos STCP Gemini Server</a> {{< icon "arrow-top-right-on-square" >}} &nbsp;

{{< callout type="info" >}}
O espaço necessário para armazenamento dos arquivos transferidos dependerá do volume e política
de retenção de dados adotada e os passos referentes à instalação dos pré-requisitos listados não serão abordados neste
procedimento. Em caso de dúvidas, consulte o administrador de redes responsável.
{{< /callout >}}

## Configuração do repositório YUM Riversoft

O STCP Gemini é distribuído mediante pacotes que se encontram em repositórios da Riversoft. Para iniciar o processo de instalação, siga os passos:

* Acesse o diretório /etc/yum.repos.d/
* Execute o comando touch riversoft-centos-7-release.repo

No arquivo criado, insira os seguintes dados:

```bash {filename="riversoft-centos-7-release.repo"}
[Riversoft-Centos-7]
name=Riversoft Packages for Centos 7 - $basearch
baseurl=http://repoyum.riversoft.com.br/riversoft_repo/prod/centos/7/$basearch
enabled=1
gpgcheck=1
gpgkey=http://repoyum.riversoft.com.br/riversoft_repo/keys/riversoft.asc
```

Finalmente, para ter acesso ao STCP Gemini Server e iniciar o processo de instalação, utilize o seguinte
comando:

```
yum install stcpgemini-server
```
