---
linkTitle: Teste de Conectividade Conectividade
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
prev: /docs
next: /debug
slug: testes-conectividade
draft: false
lastmod: 2024-03-05
---
## Telnet

Em alguns casos, para que seja possível a identificação de problemas relacionados à conexão e a troca de arquivos, utilizando o STCP OFTP Server/Client, se faz necessário à realização de testes de conectividade entre as partes envolvidas no processo de transferência.

Quando a conexão é estabelecida através de uma porta de comunicação sem o uso de certificado de segurança (TLS), siga os passos descritos abaixo:

{{< icon "terminal" >}} &nbsp;  Acesse o prompt de comando do Windows *(a execução deverá ser sem as credenciais de Administrador)*.

{{< icon "code" >}} &nbsp;  Execute o comando abaixo e pressione `ENTER`

```
telnet <IP-SERVIDOR-DESTINO> <PORTA>
```

{{< callout type="warning" >}}
Nos parâmetros IP-SERVIDOR-DESTINO e PORTA deverão ser informados o IP e Porta respectivos ao servidor do parceiro, no qual a conexão será realizada.
{{< /callout >}}

![](telnet-01.png)

{{< callout type="info" >}}
Obs.: Antes de realizar o teste com o Telnet, verifique se o mesmo encontra-se instalado em seu sistema operacional. Em caso de dúvidas consulte o seu administrador de rede.
{{< /callout >}}

Caso a conexão seja estabelecida com sucesso, a tela abaixo deverá ser exibida. Observe que para haver sucesso no teste de conectividade, a mensagem **ODETTE FTP READY** deverá ser exibida conforme a imagem de exemplo abaixo.

![](telnet-02.png)

Caso o teste retorne falha na conexão (vide exemplo abaixo), por favor, verifique com a área de infraestrutura de rede se não existe nenhum bloqueio (Firewall/Proxy) na comunicação.

É importante validar a liberação das conexões de saída (lado parceiro) e conexões de entrada (lado servidor), para o IP e Portas utilizados.

A mensagem de erro poderá variar conforme o problema existente na conectividade. Veja um exemplo abaixo no caso de erro.

![](telnet-03.png)

{{< callout type="info" >}}
Obs.: Em caso de dúvidas na execução deste processo, consulte o seu administrador de rede.
{{< /callout >}}


## OpenSSL

Em alguns casos, para que seja possível a identificação de problemas relacionados à conexão e a troca de arquivos, utilizando o STCP OFTP Server/Client, se faz necessário à realização de testes de conectividade entre as partes envolvidas no processo de transferência.

Quando a conexão é estabelecida através de uma porta de comunicação segura (TLS), siga os passos descritos abaixo:

{{< icon "download" >}} &nbsp; Efetue o download da ferramenta OpenSSL através do link:
[Download Openssl](http://www.riversoft.com.br/produtos/pub/stcp-openssl.zip)

{{< icon "copy" >}} &nbsp; Copie o arquivo openssl.exe para o diretório `C:/Temp` (ou outro de sua preferencia).

{{< icon "terminal" >}} &nbsp; Acesse o prompt de comando do Windows *(a execução deverá ser sem as credenciais de Administrador)*.

{{< icon "document" >}} &nbsp; No diretório C:/Temp execute o comando openssl.exe.

{{< callout type="warning" >}}
Nos parâmetros IP-SERVIDOR-DESTINO e PORTA deverão ser informados o IP e Porta respectivos ao servidor do parceiro, no qual a conexão será realizada.
{{< /callout >}}

{{< icon "terminal" >}} &nbsp; Após acesso ao OpenSSL, execute a linha de comando abaixo:

```
s_client -host <IP-SERVIDOR-DESTINO> -port <PORTA> –debug
```
![](openssl-01.png)

<!-- ![](telnet-02.png) -->

{{< icon "desktop-computer" >}} &nbsp; A tela a seguir deverá ser apresentada em caso de sucesso. Observe que para haver sucesso no teste de conectividade, a mensagem **ODETTE FTP READY** deverá ser exibida conforme a imagem de exemplo abaixo.

![](telnet-02.png)

Caso o teste retorne falha na conexão, por favor, verifique com a área de infraestrutura de rede se não existe nenhum bloqueio (Firewall/Proxy) na comunicação.

É importante validar a liberação das conexões de saída (lado parceiro) e conexões de entrada (lado servidor), para o IP e Portas utilizados.

A mensagem de erro poderá variar conforme o problema existente na conectividade.

{{< callout type="info" >}}
Obs.: Em caso de dúvidas na execução deste processo, consulte o seu administrador de rede.
{{< /callout >}}
