---
title: "Visão Geral"
description: ""
weight: 1
toc: false
cascade:
  type: docs
---
{{< callout type="warning" >}}
Esta documentação está **em desenvolvimento** e pode sofrer alterações à medida que endpoints, parâmetros e funcionalidades forem revisados ou adicionados.
{{< /callout >}}


O **STCP Gemini API** oferece uma interface REST segura e padronizada para integração e gerenciamento da plataforma STCP.

Por meio de **requisições HTTPS**, aplicações externas podem consultar e gerenciar recursos do ambiente STCP de forma controlada, permitindo a criação de integrações, automações e funcionalidades personalizadas.

O produto foi desenvolvido para simplificar o gerenciamento da plataforma e sua integração com outras soluções, possibilitando operações sobre recursos como **instâncias, usuários, serviços de rede, agendamentos e tipos de arquivo**.

Além do gerenciamento dos recursos, o STCP Gemini API permite consultar informações operacionais e obter diferentes tipos de relatórios, incluindo **eventos de instâncias, sistema, usuários e operadores**, além de informações relacionadas à **frequência de conexões e transferências, como histórico, estatísticas** e outros.

Seguindo os princípios da arquitetura **REST**, os recursos são disponibilizados por meio de endpoints e manipulados utilizando métodos HTTP como `GET`, `POST`, `PUT` e `DELETE`, de acordo com a operação desejada.

O acesso aos recursos protegidos é realizado por meio de **autenticação baseada em token**, evitando o envio de credenciais a cada operação e permitindo que as requisições sejam autorizadas de acordo com as permissões associadas ao usuário autenticado.
