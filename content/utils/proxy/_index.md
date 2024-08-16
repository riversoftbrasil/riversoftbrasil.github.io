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

{{< icon "chevron-right" >}}Acesse o *Riversoft STCP OFTP Client Config*: *(Iniciar -> Todos os programas -> Riversoft STCP OFTP Client)*

{{< icon "chevron-right" >}}Selecione o perfil desejado na guia **Perfis** e clique em **Propriedades**.

![](img/clt-proxy-01.png)

{{< icon "chevron-right" >}}Na guia **Geral**, clique no botão **Configurar**.

![](img/clt-proxy-02.png)

{{< icon "chevron-right" >}}Na guia **Proxy**

Clique no botão **Lê Configuração Proxy do IE** para obter as informações do navegador Internet Explorer. Caso o servidor Proxy utilize autenticação, preencha-as.

![](img/clt-proxy-03.png)

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



