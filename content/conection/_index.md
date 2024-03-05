---
linkTitle: Conectividade
layout: docs
cascade:
  type: docs
sidebar:
  exclude: false
toc: true
prev: /docs
next: /callout
---
## Teste de Conectividade (TELNET)

Em alguns casos, para que seja possível a identificação de problemas relacionados à conexão e a troca de arquivos, utilizando o STCP OFTP Server/Client, se faz necessário à realização de testes de conectividade entre as partes envolvidas no processo de transferência.

Quando a conexão é estabelecida através de uma porta de comunicação sem o uso de certificado de segurança (SSL3), siga os passos descritos abaixo:

1. Acesse o prompt de comando do Windows *(a execução deverá ser sem as credenciais de Administrador)*.

2. Execute o comando abaixo e pressione `ENTER`

```
telnet <IP-SERVIDOR-DESTINO> <PORTA>
```
<!-- ![](./imagem/img1.png) -->

<!-- ![](./imagem/img2.png) -->

{{< callout type="info" >}}
Obs.: Antes de realizar o teste com o Telnet, verifique se o mesmo encontra-se instalado em seu sistema operacional. Caso de dúvidas consulte o seu administrador de rede.
{{< /callout >}}

Caso a conexão seja estabelecida com sucesso, a tela abaixo deverá ser exibida. Observe que para haver sucesso no teste de conectividade, a mensagem ODETTE FTP READY deverá ser exibida conforme a imagem de exemplo abaixo.

![](./imagem/img3.png)

Caso o teste retorne falha na conexão (vide exemplo abaixo), por favor, verifique com a área de infraestrutura de rede se não existe nenhum bloqueio (Firewall/Proxy) na comunicação.

É importante validar a liberação das conexões de saída (lado parceiro) e conexões de entrada (lado servidor), para o IP e Portas utilizados.

A mensagem de erro poderá variar conforme o problema existente na conectividade. Veja um exemplo abaixo no caso de erro.

<!-- ![](./imagem/img4.png) -->

{{< callout type="info" >}}
Obs.: Em caso de dúvidas na execução deste processo, consulte o seu administrador de rede.
{{< /callout >}}


## Teste de Conectividade (OPENSSL)

Em alguns casos, para que seja possível a identificação de problemas relacionados à conexão e a troca de arquivos, utilizando o STCP OFTP Server/Client, se faz necessário à realização de testes de conectividade entre as partes envolvidas no processo de transferência.

Quando a conexão é estabelecida através de uma porta de comunicação segura (SSL3), siga os passos descritos abaixo:

1. Efetue o download da ferramenta OpenSSL através do link:
[Download Openssl](http://www.riversoft.com.br/produtos/pub/stcp-openssl.zip)

2. Copie o arquivo openssl.exe para o diretório `C:/Temp` (ou outro de sua preferencia).

3. Acesse o prompt de comando do Windows *(a execução deverá ser sem as credenciais de
Administrador)*.

4. No diretório C:/Temp execute o comando openssl.exe.

<!-- ![](./imagem/img1.png) -->

5. Após acesso ao OpenSSL, execute a linha de comando abaixo:
```
s_client -host <IP-SERVIDOR-DESTINO> -port <PORTA> –debug
```
<!-- ![](./imagem/img2.png) -->

<!-- ![](./imagem/img3.png) -->

6. A tela a seguir deverá ser apresentada em caso de sucesso. Observe que para haver sucesso no teste de conectividade, a mensagem ODETTE FTP READY deverá ser exibida conforme a imagem de exemplo abaixo.

<!-- ![](./imagem/img4.png) -->

Caso o teste retorne falha na conexão (vide exemplo abaixo), por favor, verifique com a área de infraestrutura de rede se não existe nenhum bloqueio (Firewall/Proxy) na comunicação.

É importante validar a liberação das conexões de saída (lado parceiro) e conexões de entrada (lado servidor), para o IP e Portas utilizados.

A mensagem de erro poderá variar conforme o problema existente na conectividade. Veja um exemplo abaixo no caso de erro.

<!-- ![](./imagem/img5.png) -->

{{< callout type="info" >}}
Obs.: Em caso de dúvidas na execução deste processo, consulte o seu administrador de rede.
{{< /callout >}}
