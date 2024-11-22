---
linkTitle: Arquivo de Configuração
title: Configuração do Portal STCPDirectLink
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 1
prev: /stcpdirectlink/04-portal/
next: 
slug: 
draft: false
lastmod: 2024-07-12
---

A configuração do portal do STCP DirectLink é realizada através de um arquivo no formato json (ex.: example-config.json) localizado no diretório ***static/portal/assets/configs***.

Copie o arquivo de exemplo **example-config.json** para **config.json** e ajustes os parâmetros de acordo com sua necessidade.

``` json
{
    "version": "1.0.2",
    "language": "pt_BR",
    "title": "Riversoft® STCP DirectLink",
    "url": "https://stcp.riversoft.com.br/directlink/v1",
    "logo": "images/river_banner_blue.png",
    "logoHeight": 96,
    "logoLaunchUrl": "https://riversoft.com.br",
    "primaryColor": "0xFF0d1e32",
    "background": "",
    "debugShowBanner": true,
    "userEnabled": false,
    "emailEnabled": false,
    "emailSenderEnabled": false,
    "smsEnabled": false,
    "darkThemeEnabled": false,
    "inactivityTimerMinutes": 30,
    "supportEmail":"suporte@riversoft.com.br",
    "pinlen":6,
    "privacyLaunchUrl":{
        "pt_BR":"https://www.riversoft.com.br/politicadeprivacidade",
        "pt":"https://www.riversoft.com.br/politicadeprivacidade",
        "es":"https://www.riversoft.com.br/politicadeprivacidade",
        "en":"https://www.riversoft.com.br/politicadeprivacidade"
    }

    "loginSSO":[
        {"provider":"google","image":"images/btn_google.png","enabled":false,
            "label":{"pt_BR":"Continuar com o Google","pt":"Continuar com o Google","es": "Continuar con o Google", "en":"Continue with Google"}},
        {"provider":"apple","image":"images/btn_apple.png","enabled":false,
            "label":{"pt_BR":"Continuar com a Apple","pt":"Continuar com a Apple","es": "Continuar con a Apple", "en":"Continue with Apple"}},
        {"provider":"microsoft","image":"images/btn_microsoft.png","enabled":false,
            "label":{"pt_BR":"Continuar com a Microsoft","pt":"Continuar com a Microsoft","es": "Continuar con a Microsoft", "en":"Continue with Microsoft"}},
        {"provider":"saml2-river-entra","image":"images/btn_saml.png","enabled":false,
            "label":{"pt_BR":"Continuar com SAML River","pt":"Continuar com SAML River","es": "Continuar con SAML River", "en":"Continue with SAML River"}}
    ]  
}
```

### Parâmetros 

Parâmetros                            | Descrição
---------                             | -------------
version                               | Versão (1.0.1)
language                              | pt_BR | en | es | pt
title                                 | Título da página
url                                   | Enpoint da api do STCP DirectLink (default: https://stcp.riversoft.com.br/directlink/v1")
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
loginSSO                              | Habilita/desabilita login SSO google (true|false) (default: false)
pinlen                                | Define o tamanho do pin de segurança (default: 6)
privacyLaunchUrl                      | Define a URL das informações de privacidade em cada lingua suportada pela aplicação (default: https://www.riversoft.com.br/politicadeprivacidade)


    