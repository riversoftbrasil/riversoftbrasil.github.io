---
linkTitle: Configurar servidor proxy
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 5
prev: /cert
next: /debug
draft: false
lastmod: 2024-05-20
---
# Configurar um servidor proxy para conexão

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp; Acesse o *Riversoft STCP OFTP Client Config*: *(Iniciar -> Todos os programas -> Riversoft STCP OFTP Client)*

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp; Selecione o perfil desejado na guia **Perfis** e clique em **Propriedades**.

![](clt-proxy-01.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp; Na guia **Geral**, clique no botão **Configurar**.

![](clt-proxy-02.png)

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp; Na guia **Proxy**

Clique no botão **Lê Configuração Proxy do IE** para obter as informações do navegador Internet Explorer. Caso o servidor Proxy utilize autenticação, preencha-as.

![](clt-proxy-03.png)

{{< callout type="info" >}}
Autenticação Basic é comumente utilizada com servidores Squid, Wingate e outros.
Autenticação NTLM é comumente utilizada com servidores ISA, MS-Proxy.
{{< /callout >}}

**Notas:**
{{< callout type="info" >}}
  Algumas configurações de autenticação requerem a informação do servidor de
  domínio (quando aplicável) no seguinte padrão: (Nomedodomínio) \ (Usuário do
  domínio).
{{< /callout >}}


{{< callout type="info" >}}
  Nos casos em que houver alteração da senha do usuário do domínio, a senha do
  STCP OFTP Client também deverá ser alterada.
{{< /callout >}}


