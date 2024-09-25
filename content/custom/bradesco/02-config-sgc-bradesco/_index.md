---
linkTitle: 
title: Configuração
excludeSearch: true
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false  
weight: 2
prev: 01-install-sgc-bradesco/
next: 03-exec-sgc-bradesco/
slug: 
draft: false 
lastmod: 2024-07-26
---

Toda a configuração da aplicação será realizada através do STCP Gemini Client Config. Não é necessária a utilização do super-usuário (root) para a configuração. 

![](image-01.png)

Siga os passos abaixo para criar o arquivo de configuração da aplicação:

```bash
$ cd /usr/local/stcpclient/configs/
$ cp example-stcpclient.config.json stcpclient.config.json
```

Execute o configurador do STCP Gemini Client e siga os passos exibidos na tela para concluir a configuração (consulte tabela abaixo com os dados para preenchimento).

```bash
$ stcpclient-config init
```

![](image-02.png)

| Parâmetros       |  Descrição      | 
| -------------    | :-------------: | 
| Número de série  |  **Fornecido pelo Bradesco**  | 
| Sistema operacional   | 0-Linux                  |    
| Nome do Perfil        | O0055BRADESCO            |   
| OID (Odette ID)       | **Fornecido pelo Bradesco**  |   
| Senha OID (Odette ID) | **Fornecido pelo Bradesco**  |   
| Endereço IP           | rvsweb.bradesco.com.br       |   
| Porta                 |         443                  |   
| Comunicação segura (TLS) |         Não               |   
| Certificado de arquivo   |      Deixar em branco     |   
| Certificado de diretório |      Deixar em branco     |   
| Backup arquivos transmitidos |         Não               |   
| Nome longo para arquivos     |         Sim               |   
