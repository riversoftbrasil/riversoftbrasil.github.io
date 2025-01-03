---
linkTitle: Portal
title: Portal STCP Gemini 
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 
prev: 
next: stcpgeminiserver/api
slug: portal-gemini 
lastmod: 2024-08-01
---

Esta seção tem como objetivo descrever os passos de instalação e configurações iniciais do STCP Portal Gemini. Outras configurações podem ser realizadas conforme as necessidades específicas do ambiente e/ou funcionalidades utilizadas.

> [!NOTE] Nota: 
> O Portal Gemini necessita do STCP Gemini API Rest para se comunicar com o STCP Gemini Server.


## Instalação

### Pré-requisitos de Software

* Instalação e configuração do STCP Gemini API. [Ver documentação](/stcpgeminiserver/api); 
* Navegadores Chrome (Ver 80 ou superior), Firefox (ver 81 ou superior) ou Safari (MacOS, Ver 14 ou superior);

> [!NOTE] Nota:
> Os passos referentes à instalação dos pré-requisitos listados não serão abordados nesta seção. Em caso de dúvidas, consulte o administrador de redes responsável.


## Configurações do STCP Gemini Portal

O STCP Gemini Portal pode ser utilizado de duas maneiras:

* Integrado ao STCP Gemini API (preferencialmente)
* Integrado ao servidor Apache ou outros servidores web

### Configurando o STCP Gemini Portal integrado no STCP Gemini API

* Acesse o diretório /usr/local/stcpgemini-api/portal/app/configs.
* Copie o arquivo example-config.json para config.json
* Adicione a URL do STCP Gemini API na chave STCPRestAPIURL do arquivo config.json;


```json
{
"info": "A chave STCPRestAPIURL abaixo representa o end point do STCPRest. Ex.: http://0.0.0.0:8888",
"STCPRestAPIURL": "http://192.168.0.1:8094"
}

```

* Na barra de pesquisa em seu navegador digite o ip/porta ou URL em que seu servidor está executando o STCPGemini API.

### Configurando o STCPGeminiPortal no Apache 

> [!IMPORTANT] Importante
> O intuito dessa seção não é abordar a instalação do Apache.

* Instale o STCP Gemini Portal executando o seguinte comando:

``` bash
$ yum install stpcgemini-portal 
```

* Após a conclusão da instalação, faça os seguintes passos:
  * Acesse o diretório /var/www/;
  * Verifique a existência do diretório stpcportalweb;
  * Copie os arquivos de stpcportalweb para o diretório html.

* Acesse o diretório html e em seguida acesse o diretório configs.

* Adicione a URL do STCP Gemini API na chave **STCPRestAPIURL** do arquivo **config.json**;

```json
{
"info": "A chave STCPRestAPIURL abaixo representa o end point do STCPRest. Ex.: http://0.0.0.0:8888",
"STCPRestAPIURL": "http://0.0.0.0:8888"
}
```

* Na barra de pesquisa de seu navegador, digite o ip do seu servidor.

> [!NOTE] Nota:
> Por padrão, o Apache é executado na porta 80, se desejar mudar a porta ou fazer um *virtual host* consulte a documentação do Apache.


