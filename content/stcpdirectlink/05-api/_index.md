---
linkTitle: API Rest
layout: docs
cascade:
  type: docs
sidebar:
  exclude: false
weight: 5
prev: /04-portal
next: /01-authentication
slug: api-rest
draft: false
lastmod: 2024-03-05
---

## STCP DirectLink - API REST

A utilização de API REST *(Representational State Transfer)* tem crescido amplamente e sua utilização por diferentes sistemas e provedores de serviços (SaaS) abre imensas oportunidades de integração.

Para possibilitar a integração de forma ágil, o STCP DirectLink disponibiliza uma API *(Application Program Interface)* no padrão [REST](https://developer.mozilla.org/pt-BR/docs/Glossary/REST) que combina segurança e simplicidade. A API utiliza o protocolo **https**.

{{< callout type="info" >}}
 Autenticação
 <br> Para garantir total segurança no acesso a API as requisições serão autenticadas através das credenciais informadas no header de autenticação **Basic** ou **Bearer**.
{{< /callout >}}

{{< callout type="warning" >}}
Limite de requisições
<br> O limite de requisições deverá ser implementado no ambiente de firewall de borda.
{{< /callout >}}






