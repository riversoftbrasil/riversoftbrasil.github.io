---
linkTitle: Diagrama de autenticação utilizando JWT
layout: docs
sidebar:
  exclude: true
weight: 12
prev: /docs/getting-started
next: /docs/guide/organize-files
slug: diagrama-de-autenticacao-utilizando-jwt
---

## Diagrama de autenticação utilizando JWT

Para possibilitar uma fácil integração do STCPDirectLink com portais de serviços, está disponível  a autenticação através de um token de confiança no padrão JWT.

O portal de serviços deve gerar um token JWT contendo as informações (Claims) de confiança e assinar com sua chave privada para requisitar o acesso ao portal de transferência de arquivos do STCPDirectLink.
O diagrama abaixo mostra o fluxo e as informações de confiança que deverão ser informadas:


