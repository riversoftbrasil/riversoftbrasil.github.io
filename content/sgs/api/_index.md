---
linkTitle: API Rest
title: Uso do STCP Gemini API Rest
excludeSearch: true
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: true
weight: 2
prev:
next:
draft:
lastmod: 2024-06-14
---
O STCP Gemini API é um novo serviço utilizando a arquitetura Rest do módulo STCP Gemini que permite ao usuário gerenciar as
configurações do STCP Server a partir de requisições HTTP. Sua função é facilitar o gerenciamento das caixas postais e permitir que sejam manipuladas através da integração com soluções dos clientes.

Seu core é baseado na plataforma **NodeJS**, visando aumentar a velocidade de criação de funcionalidades, fácil integração entre
plataformas e uma maior escalabilidade do produto.

## Funcionalidades

O STCP Gemini API permite a manipulação de:

* Servidores (Instâncias);
* Usuários;
* Serviços de Rede;
* Agendamentos;
* Tipos de Arquivos.

Por se tratar de um serviço seguindo as metodologias REST, os métodos HTTP **(POST, GET, PUT e DELETE)** refletem os métodos CRUD
(Create, Retrieve, Update e Delete) do módulo.

