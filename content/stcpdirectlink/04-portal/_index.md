---
linkTitle: Portal Web
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 4
prev: /03-run
next: /authentication
# slug:
draft: false
lastmod: 2024-02-23
---

## Portal Web

O Riversoft® STCP DirectLink têm um portal web que possibilita o processo de upload (envio) e download (recebimento) dos arquivos diretamente de maneira simples.

![](img/authentication-dirl.png "Portal de autenticação")

## Configuração do Portal de upload do STCPDirectLink

A configuração do portal do STCPDirectLink é realizada através de um arquivo no formato json (ex.: example-config.json) localizado no diretório ***static/portal/assets/configs***.

Copie o arquivo de exemplo **example-config.json** para **config.json** e ajustes os parâmetros de acordo com sua necessidade.

``` json
{
    "version": "1.0.1",
    "language": "pt_BR",
    "title": "Riversoft® STCP DirectLink",
    "url": "https://stcp.riversoft.com.br/directlink/v1",
    "logo": "images/river_banner_blue.png",
    "logoHeight": 96,
    "logoLaunchUrl": "https://riversoft.com.br",
    "primaryColor": "0xFF0d1e32",
    "background": "images/fundo.jpg",
    "debugShowBanner": true,
    "userEnabled": false,
    "emailEnabled": false,
    "emailSenderEnabled": false,
    "smsEnabled": false,
    "darkThemeEnabled": false,
    "inactivityTimerMinutes": 30,
    "emailSupport":"suporte@riversoft.com.br",
    "loginSSOgoogle": false,
    "loginSSOmicrosoft": false,
    "loginSSOapple": false,
    "pinlen":6,
    "privacyLaunchUrl":{
        "pt_BR":"https://www.riversoft.com.br/politicadeprivacidade",
        "pt":"https://www.riversoft.com.br/politicadeprivacidade",
        "es":"https://www.riversoft.com.br/politicadeprivacidade",
        "en":"https://www.riversoft.com.br/politicadeprivacidade"
    }
}
```

### Parâmetros 

Parâmetros                            | Descrição
---------                             | -------------
version                               | Versão (1.0.1)
language                              | pt_BR | en | es | pt
title                                 | Título da página
url                                   | Enpoint da api do STCPDirectLink (default: https://stcp.riversoft.com.br/directlink/v1")
logo                                  | Imagem do logotipo (default: 96)
logoHeight                            | Altura da imagem do logo (default: images/river_banner_blue.png)
logoLaunchUrl                         | Hiperlink associado ao logo (default: https://riversoft.com.br)
primaryColor                          | Cor primaria (default: 0xFF0d1e32)
background                            | Imagem de fundo (default: nenhuma)
debugShowBanner                       | Modo de debug (true|false) (default: false)
userEnabled                           | Mostra o campo de usuário no formulário de upload (true|false) (default: true)
emailEnabled                          | Mostra o campo de email no formulário de upload (true|false) (default: false)
emailSenderEnabled                    | Mostra o campo de email do remetente para notificação de retirada do arquivo no formulário de upload (true|false) (default: false)
smsEnabled                            | Mostra o campo de telefone no formulário de upload (true|false) (default: false)
darkThemeEnabled                      | Habilita/desabilita modo escuro (true|false) (default:false)
inactivityTimerMinutes                | Define o tempo máximo de inatividade para logout em minutos (default: 30)
emailSupport                          | Define o email de suporte
loginSSOgoogle                        | Habilita/desabilita login SSO google (true|false) (default: false)
loginSSOmicrosoft                     | Habilita/desabilita login SSO microsoft (true|false) (default: false)
loginSSOapple                         | Habilita/desabilita login SSO apple (true|false) (default: false)
pinlen                                | Define o tamanho do pin de segurança (default: 6)
privacyLaunchUrl                      | Define a URL das informações de privacidade em cada lingua suportada pela aplicação (default: https://www.riversoft.com.br/politicadeprivacidade)
