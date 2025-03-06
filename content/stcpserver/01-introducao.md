---
linkTitle: Visão geral
layout: docs
cascade:
  type: docs
sidebar:
  exclude: false
weight: 1
prev: /docs
next: /01-install-srv
slug: introducao
brand: stw
---

## O que é o STCP OFTP Server

O STCP OFTP Server é um servidor de transferência de arquivos **seguro** e **multiprotocolo** para aplicações de **e-business** e troca de informações corporativas, baseado na especificação <a href="/utils/protocols/#oftp" target="_blank">OFTP (ODETTE File Transfer Protocol)</a> {{< icon "arrow-top-right-on-square" >}} &nbsp;

{{< advantages-stcp "static/templates/advantages-stcp.md" >}}

## Características

O STCP OFTP Server oferece as seguintes características:

* Protocolo de transferência <a href="/utils/protocols/#oftp" target="_blank">OFTP (ODETTE File Transfer Protocol)</a> {{< icon "arrow-top-right-on-square" >}} &nbsp;
* Autenticação através do protocolo *OFTP*;
* Autenticação através de certificado digital X.509 (TLS);
* Criptografia RSA, 3DES, DES, AES (TLS);
* Multiprotocolo de comunicação **TCP/IP** (OFTP, HTTPS, FTP e SFTP), **S3** (AWS) e **Blob** (Azure);
* Transferência de todos os tipos de arquivos;
* Registros de logs de auditoria (bilhetagem) e eventos;
* Recuperação de transferência interrompida;
* Comunicação através de Proxy HTTP;
* Compressão padrão OFTP ou GZIP;
* Número ilimitado de sessões de transferência (Versão Enterprise) ou até 10 (dez) sessões de transferência (Versão Lite);
* Número ilimitado de usuários (Versão Enterprise) ou até 10 (dez) usuários (Versão Lite).

## Requisitos de software e hardware

Confira os requisitos de software e hardware da aplicação: 

- Processador de 2 gigahertz (GHz);
- 2 gigabytes (GB) de RAM;
- 150 megabytes (MB) de espaço disponível em disco rígido para o aplicativo; <sup>1</sup>
- Sistema operacional Windows 10/11/2012/2016/2019/2022; <sup>2</sup>
- Banco de dados (SQL Server, MySQL, MariaDB, Oracle); <sup>3</sup>
- Driver ODBC para conexão com o Banco de Dados.


{{< callout type="" >}}
  <sup>1</sup> O espaço disponível para os arquivos transferidos dependerá do volume e política de armazenamento de dados adotada.
{{< /callout >}}

{{< callout type="" >}}
  <sup>2</sup> Server with Desktop Experience.
{{< /callout >}}

{{< callout type="" >}}
  <sup>3</sup> Para versão STCP OFTP Server Enterprise.
{{< /callout >}}



