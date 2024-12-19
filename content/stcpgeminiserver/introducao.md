---
linkTitle: Visão geral
title: O que é o STCP Gemini Server
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 1
prev: /docs
next:
draft:
lastmod: 2024-08-27
---
O STCP Gemini Server é uma aplicação servidora utilizada para transferência de arquivos seguro e multiprotocolo para aplicações de e-business e troca de informações corporativas, baseado na especificação OFTP.

Nesta seção veremos os passos de instalação e configurações do STCP Gemini Server. Outras configurações podem ser realizadas conforme as necessidades específicas do ambiente e/ou funcionalidades utilizadas.

> NOTA: Todo o procedimento foi baseado na distribuição Linux CentOS 7.0.

## Uso e Vantagens

* Integração:
  * Com parceiros para transferência de arquivos
  * De sistemas através de transferência de arquivos
  * Com bancos para transferência de cobrança, pagamento, extratos e outros
  * Com montadoras para transferência de ordens de embarque e produção
  * Com associações comerciais para transferência de lista negra
  * Com atacadistas para transferência de pedidos de compras
  * Com VANS (Finnet, EmVia, GXS/OpenText, Tivit, Nexxera, Accesstage, ATP e outras)
* Transferência segura de arquivos
* Transferência ilimitada e de qualquertipo de arquivo (TXT, XML, PDF, outros)
* Recuperação das transferências interrompidas (RESTART)
* Agendamento e automação do processo de envio e recebimento de arquivos
* Integração facilitada com as aplicações existentes
* Número ilimitado de usuários e sessões de transferências
* Conversão de dados (ASCII / EBCDIC e outros) e formato (fixo e variável) de arquivos
* Gerenciamento Web (Portal)

### Segurança

* Criptografia RSA, 3DES, DES, AES
* Políticas de segurança no controle de autenticação
* Comunicação através de Proxy HTTP, SOCKS4 o SOCKS5
* Registro de logs de auditoria e eventos
* Execução de processos por eventos
* Suporte OFTP2
* Execução em Docker
* Tags para melhoria da LGPD
* Armazenamento de logs em Banco de dados

## STCP Gemini API

API para integração de aplicações, facilitando o processo de administração e supervisão.

{{< callout type="info" >}}
Está aplicação só está disponível para STCP Gemini Server.
{{< /callout >}}

### Funcionalidades

* Integração de sistemas através das URIs para administração de todo o sistema
* Consulta de logs por URI
* Número ilimitados de operadores para administração do Portal
* Grupos para gerenciamento de permissionamento
* Funcionamento de múltiplas instâncias (Servidores)
* Consulta de logs diretamente do console do Gemini Server
* Possibilidade de início/cancelamento de transferência segura de arquivos
* Agendamento do processo de envio e recebimento de arquivos
* Configuração de conversão de dados (ASCII / EBCDIC e outros) e formato (fixo e variável) de arquivos
* Possibilidade de criartemplates personalizados (Usuários, Agendamentos e outros)
* Alteração de nível de debug no Gemini Server

### Segurança

* Uso de certificado digital X.509 (TLS) para execução da API em HTTPS
* Autenticação OAUTH2 para operadores
* Execução em Docker
* Possibilidade de execução do Portal dentro da API
* URI únicas para cada função
* Criptografia de senhas com a palavra desejada

## STCP Gemini Portal

Ferramenta com acesso pelo navegador (HTTPS), é possível controlar os processos de transferência de arquivos e supervisionar os servidores STCP.

{{< callout type="info" >}}
Esta aplicação só está disponível para o STCP Gemini Server.
{{< /callout >}}

### Funcionalidades

* Gerenciamento:
  * Instâncias
  * Serviços (Redes)
  * Usuários (Caixas postais)
  * Agendamentos
  * Operadores
  * Grupos
  * Códigos de Erros e Eventos
* Consulta de logs
* Relatórios
* Manutenção de usuários (caixas postais) e operadores
* Reset de hash de máquina
* Reset de lock
* Restart da instância
* Alterar nível de debug do Gemini Server
* Iniciar/Cancelar conexão do usuário

### Segurança

* Uso de certificado digital X.509 (TLS) para acesso em HTTPS
* Autenticação por usuário e senha
* Execução em Docker
* Execução em servidor Apache ou Nginx

<!-- Veja as vantagens e integrações da aplicação na seção <a href="/utils/advantages/#stcp-gemini-server-e-stcp-gemini-client" target="_blank">Uso e vantagens do STCP</a> {{< icon "arrow-top-right-on-square" >}} &nbsp; -->

<!-- {{< cards >}}
  {{< card link="/stcpgeminiserver/custom/" title="Documentos disponíveis em PDF" icon="document-check" >}}
{{< /cards >}} -->
