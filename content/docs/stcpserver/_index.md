---
linkTitle: STCP OFTP Server
layout: docs
cascade:
  type: docs
sidebar:
  exclude: false
weight: 2
prev: /docs/stcpclient
next: /01-install-srv
# slug:
lastmod: 2024-02-26
---
# Introdução

O STCP OFTP Server é um servidor de transferência de arquivos seguro e multiprotocolo para aplicações de e-business e troca de informações corporativas, baseado na especificação [OFTP (ODETTE File Transfer Protocol)](/odette).

### Onde usar?

O STCP OFTP Server pode ser utilizado por diferentes aplicações para:

* Integração com parceiros para transferência de informações
* Integração de sistemas através de transferência de arquivos
* Integração com bancos para transferência de cobrança, pagamento, extratos e outros
* Integração com montadoras para transferência de ordens de embarque e produção
* Integração com associações comerciais para transferência de lista negra
* Integração com atacadistas para transferência de pedidos de compras
* Integração com VANS (Embratel, Proceda, Interchange e outras)
* Outras aplicações

### Quais as vantagens?

O STCP OFTP Server oferece as seguintes vantagens:

* Facilidade de integração com as aplicações existentes
* Automatização do processo de envio/recepção de arquivos
* Execução através de agendamento
* Aumento da segurança no transporte dos arquivos
* Compatibilidade com outros produtos que seguem a especificação OFTP (RFC2204)

### Características
O STCP OFTP Server oferece as seguintes características:

* Protocolo de transferência OFTP (ODETTE File Transfer Protocol)
* Autenticação através do protocolo *OFTP*
* Autenticação através de certificado digital X.509 (SSL3)
* Criptografia RSA, 3DES, DES, AES (SSL3)
* Multiprotocolo de comunicação TCP, SSL3, X.25, PAD e Discado
* Transferência de todos os tipos de arquivos
* Registros de logs de auditoria (bilhetagem) e eventos
* Recuperação de transferência interrompida
* Comunicação através de Proxy HTTP, SOCKS4 ou SOCKS5
* Compressão padrão OFTP ou GZIP
* Número ilimitado de sessões de transferência (Versão Enterprise) ou até 10 (dez) sessões de transferência (Versão Lite)
* Número ilimitado de usuários (Versão Enterprise) ou até 10 (dez) usuários (Versão Lite)
* Versões Windows NT/2000/2003/XP

### Requisitos de software e hardware
O STCP OFTP Server necessita dos seguintes requisitos de software e hardware para a sua instalação:

* Processador 500MHz x86 ou x64 ou superior
* 1 Gb ou superior de memória RAM
* 10 Mbytes de espaço disponível em disco rígido para o aplicativo
* Drive de CD/DVD-ROM
* Sistema operacional Windows 2000/XP/2003/Vista/2008
* Net Open Wan Connect X.25 *
* Banco de dados (SQL Server, MySQL, Oracle, Sybase, SQLite) **
* Driver ODBC para conexão com o Banco de Dados

{{< callout type="info" >}}
*Opcional para comunicação X.25
{{< /callout >}}

{{< callout type="info" >}}
**Opcional
{{< /callout >}}

