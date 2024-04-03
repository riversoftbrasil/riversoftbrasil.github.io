---
linkTitle: Protocolo OFTP
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 6
prev: /database
next: /security
slug: protocolo-oftp
draft: false
lastmod: 2024-04-02
---
## OFTP

*Protocolo OFTP (ODETTE File Transfer Protocol)*

Este protocolo foi especificado pelo Grupo de Trabalho 4 da Organização ODETTE (Organization for Data Exchange by Tele Transmission in Europe), nos anos 80, para atender a indústria automotiva européia e padronizar a forma de comunicação entre as diferentes empresas da cadeia produtiva (supply-chain) do setor.

O OFTP foi primeiramente especificado com as premissas do modelo de interconexão de sistemas abertos (OSI) utilizando o serviço de rede recomendado pela norma CCITT X.25. Com o crescimento da utilização do OFTP por diferentes setores (bancos, comércio, governo etc.) e em diferentes plataformas (mainframes, mini e microcomputadores), a organização ODETTE ampliou o escopo da padronização e incorporou a utilização do protocolo TCP/IP. A RFC (Request for Comments) 2204 orienta a utilização do OFTP em redes TCP/IP.

## TCP/IP

Trata-se do acrônimo de dois protocolos combinados. São eles o TCP (Transmission Control Protocol — Protocolo de Controle de Transmissão) e IP (Internet Protocol — Protocolo de Internet).

Juntos, são os responsáveis pela base de envio e recebimento de dados por toda a internet. Essa pilha de protocolos é dividida em 4 camadas:

aplicação: usada para enviar e receber dados de outros programas pela internet. Nessa camada estão os protocolos HTTP, FTP e SMTP;
transporte: responsável por transportar os arquivos dos pacotes recebidos da camada de aplicação. Eles são organizados e transformados em outros menores, que serão enviados à rede;
rede: os arquivos empacotados na camada de transporte são recebidos e anexados ao IP da máquina que envia e recebe os dados. Em seguida, eles são enviados pela internet;
interface: é a camada que executa o recebimento ou o envio de arquivos na web.

## HTTP/HTTPS

O protocolo HTTP (Hypertext Transfer Protocol — Protocolo de Transferência de Hipertexto) é usado para navegação em sites da internet. Funciona como uma conexão entre o cliente (browser) e o servidor (site ou domínio).

O navegador envia um pedido de acesso a uma página, e o servidor retorna uma resposta de permissão de acesso. Junto com ela são enviados também os arquivos da página que o usuário deseja acessar.

Já o HTTPS (Hyper Text Transfer Secure — Protocolo de Transferência de Hipertexto Seguro) funciona exatamente como o HTTP, porém, existe uma camada de proteção a mais. Isso significa que os sites que utilizam esse protocolo são de acesso seguro.

O protocolo HTTPS é comumente usado por sites com sistemas de pagamentos. Esse tipo de site depende de proteção que garanta a integridade dos dados, informações de conta e cartão de créditos dos usuários. A segurança é feita por meio de uma certificação digital, que cria uma criptografia para impedir ameaças e ataques virtuais.

## FTP

Significa Protocolo de Transferência de Arquivos (do inglês File Transfer Protocol). É a forma mais simples para transferir dados entre dois computadores utilizando a rede.

O protocolo FTP funciona com dois tipos de conexão: a do cliente (computador que faz o pedido de conexão) e do servidor (computador que recebe o pedido de conexão e fornece o arquivo ou documento solicitado pelo cliente).

O FTP é útil caso o usuário perca o acesso ao painel de controle do seu site. Assim sendo,essa ferramenta pode ser usada para realizar ajustes página, adicionar ou excluir arquivos, ou ainda solucionar qualquer outra questão no site.


## SFTP

Simple Transfer Protocol (Protocolo de Transferência Simples de Arquivos) consiste no protocolo FTP acrescido de uma camada de proteção para arquivos transferidos.

Nele, a troca de informações é feita por meio de pacotes com a tecnologia SSH (Secure Shell – Bloqueio de Segurança), que autenticam e protegem a conexão entre cliente e servidor. O usuário define quantos arquivos serão transmitidos simultaneamente e define um sistema de senhas para reforçar a segurança.


## Referência

<!-- [Protocolos de rede](https://www.opservices.com.br/protocolos-de-rede/) -->

<a href="https://www.opservices.com.br/protocolos-de-rede/" target="_blank">Protocolos de rede</a> {{< icon "arrow-top-right-on-square" >}} &nbsp;.
