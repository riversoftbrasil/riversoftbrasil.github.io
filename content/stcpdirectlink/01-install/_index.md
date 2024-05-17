---
linkTitle: Instalação
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 1
prev: /stcpdirectlink/
next: /stcpdirectlink/01-install/requirements
draft: false
lastmod: 2024-03-14
---
## Distribuição dos pacotes para instalação

O STCP Directlink é distribuido através de um arquivo zip (stcpdirectlink-`<version>`.zip) que deverá ser descompactado na pasta de sua preferência (ex.: /usr/local ou C:/Arquivos de Programa) ou nas plataformas linux (RedHat, Centos, Rocky, Oracle, **Amazon** e etc.) através do gerenciador de pacotes yum.

## Instalação pelo gerenciador de pacotes yum yab
A instalação no sistema operacional Linux pode ser realizada através do gerenciador de pacotes ***yum***, o seguinte comando deve ser utilizado:

``` bash
  yum install stcpdirectlink
```

Após a instalação a estrutura de diretório acima descrita será criada na seguinte pasta:
``` bash
  /usr/local/stcpdirectlink
```

O processo de instalação irá criar uma entrada no gerenciador de serviços ***systemd*** para execucão da aplicação.
``` bash
  systemctl start stcpdirectlink
```
