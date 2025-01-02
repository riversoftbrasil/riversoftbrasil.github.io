---
linkTitle: Requisitos de software e hardware
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 11
prev: protocols/
next: conection/
draft: false
lastmod: 2024-08-02
---
## STCP OFTP Server

- Processador de 2 gigahertz (GHz)
- 2 gigabytes (GB) de RAM
- 150 megabytes (MB) de espaço disponível em disco rígido para o aplicativo <sup>1</sup>
- Sistema operacional Windows 10/11/2012/2016/2019/2022 <sup>2</sup>
- Banco de dados (SQL Server, MySQL, MariaDB, Oracle) <sup>3</sup>
- Driver ODBC para conexão com o Banco de Dados

## STCP OFTP Client

- Processador de 2 gigahertz (GHz)
- 2 gigabytes (GB) de RAM
- 100 megabytes (MB) de espaço disponível em disco rígido para o aplicativo <sup>1</sup>
- Sistema operacional Windows 10/11/2012/2016/2019/2022 <sup>2</sup>

## STCP Rename

- Processador de 2 gigahertz (GHz)
- 2 gigabytes (GB) de RAM
- 15 megabytes (MB) de espaço disponível em disco rígido para o aplicativo <sup>1</sup>
- Sistema operacional Windows 10/11/2012/2016/2019/2022 <sup>2</sup>

## STCP OFTP Web Admin

- Processador de 2 gigahertz (GHz)
- 2 gigabytes (GB) de RAM
- 100 megabytes (MB) de espaço disponível em disco rígido para o aplicativo <sup>1</sup>
- Sistema operacional Windows 10/11/2012/2016/2019/2022 <sup>2</sup>
- IIS/Apache
- Microsoft Edge, Google Chrome, Firefox, Safari, Opera, outros
- Banco de dados (SQL Server, MySQL, MariaDB, Oracle)
- Driver ODBC para conexão com o Banco de Dados

## STCP OFTP Change Password

- Processador de 2 gigahertz (GHz)
- 2 gigabytes (GB) de RAM
- 50 megabytes (MB) de espaço disponível em disco rígido para o aplicativo <sup>1</sup>
- Sistema operacional Windows 10/11/2012/2016/2019/2022 <sup>2</sup>
- IIS
- Microsoft Edge, Google Chrome, Firefox, Safari, Opera, outros
- Microsoft.Net Framework 2.0 ou superior

## STCP Monitor

- Processador de 2 gigahertz (GHz)
- 2 gigabytes (GB) de RAM
- 100 megabytes (MB) de espaço disponível em disco rígido para o aplicativo <sup>1</sup>
- Sistema operacional Windows 10/11/2012/2016/2019/2022 <sup>2</sup>
- IIS/Apache
- Microsoft Edge, Google Chrome, Firefox, Safari, Opera, outros
- Banco de dados (SQL Server, MySQL, MariaDB, Oracle, Sybase, SQLite)
- Driver ODBC para conexão com o Banco de Dados


## STCP Signer

- Processador de 2 gigahertz (GHz)
- 2 gigabytes (GB) de RAM
- 10 megabytes (MB) de espaço disponível em disco rígido para o aplicativo <sup>1</sup>
- Sistema operacional Windows 10/11/2012/2016/2019/2022 <sup>2</sup>
- Interface de criptografia Microsoft CRYPTOAPI

## STCP Directlink

- Processador de 2 gigahertz (GHz)
- 4 gigabytes (GB) de RAM
- 200 megabytes (MB) de espaço disponível em disco rígido para o aplicativo <sup>1</sup>
- Sistema operacional Windows 10/11/2012/2016/2019/2022 <sup>2</sup>
- Linux RHEL, Ubuntu, Oracle Linux, CentOS, Rocky Linux, outros
- Banco de dados (SQL Server, MySQL, MariaDB)

## STCP Gemini Server

- Processador de 2 gigahertz (GHz)
- 4 gigabytes (GB) de RAM
- 200 megabytes (MB) de espaço disponível em disco rígido para o aplicativo <sup>1</sup>
- Linux RHEL, Oracle Linux, CentOS, Rocky Linux
- Banco de dados (MySQL, MariaDB, Oracle<sup>4</sup> e Microsoft SQL Server<sup>4</sup>)

## STCP Gemini Client

- Processador de 2 gigahertz (GHz)
- 4 gigabytes (GB) de RAM
- 100 megabytes (MB) de espaço disponível em disco rígido para o aplicativo <sup>1</sup>
- Linux RHEL, Ubuntu, Oracle Linux, CentOS, Rocky Linux, outros

## Sistemas Operacionais Homologados

O STCP encontra-se homologado para utilização na plataforma Microsft Windows (x86-32 x86-64), nas seguintes versões de sistemas operacionais:

### Ambiente Suportado

<!-- - Microsoft Windows Server 2019 <sup>2</sup> -->
- Microsoft Windows Server 2022 <sup>1</sup>
- Microsoft Windows Server 2016 <sup>1</sup>
- Microsoft Windows Server 2012 R2
- Microsoft Windows Server 2012
- Microsoft Windows Server 2008 R2
- Microsoft Windows 11
- Microsoft Windows 10

### Ambiente Suportado em Cluster

- Microsoft Windows Server 2022 <sup>2</sup>
- Microsoft Windows Server 2019 <sup>2</sup>
- Microsoft Windows Server 2016 <sup>2</sup>
- Microsoft Windows 2012 Server R2
- Microsoft Windows 2012 Server
- Microsoft Windows 2008 Server R2

<br>

--------------------------------------------------
<br>

{{< callout type="" >}}
  <sup>1</sup> O espaço disponível para os arquivos transferidos dependerá do volume e política de armazenamento de dados adotada.
{{< /callout >}}

{{< callout type="" >}}
  <sup>2</sup> Server with Desktop Experience.
{{< /callout >}}

{{< callout type="" >}}
  <sup>3</sup> Para versão STCP OFTP Server Enterprise.
{{< /callout >}}

{{< callout type="" >}}
  <sup>4</sup> Consultar disponibilidade.
{{< /callout >}}