---
linkTitle: Instalação
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 1
prev: /stcpdirectlink/
next: /stcpdirectlink/01-install/requirements
draft: false
slug: instalacao
lastmod: 2024-09-30
---
## Distribuição dos pacotes para instalação

O **STCP Directlink** é distribuido através de um arquivo zip (stcpdirectlink-`<versão>`.zip) que deverá ser descompactado na pasta de sua preferência (ex.: /usr/local ou C:/Arquivos de Programa) ou nas plataformas linux (RedHat, Centos, Rocky, Oracle, Amazon e etc.) através do gerenciador de pacotes yum.

<br>
Exemplo:

{{< icon "folder" >}} stcpdirectlink-`<versão>`-prod

## Requisitos

- Sistema operacional (Windows ou Linux);
- Interface de rede para o serviço **http/https**;
- Relay de e-mail para o serviço de notificação;
- Banco de dados para registro de log (**MySQL**, **MariaDB** ou **SQLServer**);
- Chave e certificado digital para comunicação TLS yab.

## Instalação pelo gerenciador de pacotes yum yab
A instalação no sistema operacional Linux pode ser realizada através do gerenciador de pacotes ***yum***, o seguinte comando deve ser utilizado:

``` bash
  yum install stcpdirectlink
```

Após a instalação a estrutura de diretório acima descrita será criada na seguinte pasta:
``` bash
  /usr/local/stcpdirectlink
```

O processo de instalação irá criar uma entrada no gerenciador de serviços ***systemd*** para execucão da aplicação.
``` bash
  systemctl start stcpdirectlink
```

## Estrutura dos diretórios

Após ser instalado a seguinte estrutura de pastas e arquivos devem estar presentes:

{{< filetree/container >}}
  {{< filetree/folder name="STCPDirectLink" state="open">}}
  {{< filetree/folder name="bin" state="closed" >}}
  {{< /filetree/folder >}}

  {{< filetree/folder name="configs" state="closed" >}}
  {{< /filetree/folder >}}

  {{< filetree/folder name="control" state="closed" >}}
  {{< /filetree/folder >}}

   {{< filetree/folder name="data" state="closed" >}}
  {{< /filetree/folder >}}


  {{< filetree/folder name="license" state="closed" >}}
  {{< /filetree/folder >}}

  {{< filetree/folder name="logs" state="closed" >}}
  {{< /filetree/folder >}}

  {{< filetree/folder name="static" state="open" >}}
     {{< filetree/folder name="css" state="closed" >}}
     {{< /filetree/folder >}}

     {{< filetree/folder name="images" state="closed" >}}
     {{< /filetree/folder >}}

    {{< filetree/folder name="portal" state="open" >}}
      {{< filetree/folder name="assets" state="open" >}}
        {{< filetree/folder name="configs" state="closed" >}}
        {{< /filetree/folder >}}
      {{< /filetree/folder >}}
    {{< /filetree/folder >}}
  {{< /filetree/folder >}}

  {{< filetree/folder name="templates" state="open" >}}
    {{< filetree/folder name="riversoft" state="closed" >}}
    {{< /filetree/folder >}}
  {{< /filetree/folder >}}

  {{< /filetree/folder >}}
{{< /filetree/container >}}


Diretório                     | Descrição
---                           | ----
bin                           | Executávies da aplicação
configs                       | Configurações
control                       | Diretório de controle
data                          | Diretório de dados (sandbox)
license                       | Diretório de licença
logs                          | Logs de acesso a aplicação
static                        | Páginas estáticas da aplicação
static/css                    | Configurações dos estilos de página
static/images                 | Imagens utilizadas pela aplicação
static/portal                 | Aplicação do portal de transferência (flutter)
templates                     | Modelos de notificações de e-mail/sms/páginas de erros
templates/riversoft/email     | Modelos de notificações de e-mail (padrão riversoft)
templates/riversoft/email/ptb | Modelos de notificações de e-mail (padrão riversoft) em português
templates/riversoft/email/esp | Modelos de notificações de e-mail (padrão riversoft) em espanhol
templates/riversoft/email/enu | Modelos de notificações de e-mail (padrão riversoft) em ingles
templates/riversoft/page      | Modelos de notificações de páginas de erros (padrão riversoft)
templates/riversoft/page/ptb  | Modelos de notificações de páginas de erros (padrão riversoft) em português
templates/riversoft/page/esp  | Modelos de notificações de páginas de erros (padrão riversoft) em espanhol
templates/riversoft/page/enu  | Modelos de notificações de páginas de erros (padrão riversoft) em ingles
templates/riversoft/sms       | Modelos de notificações de sms (padrão riversoft)
templates/riversoft/sms/ptb   | Modelos de notificações de sms (padrão riversoft) em português
templates/riversoft/sms/esp   | Modelos de notificações de sms (padrão riversoft) em espanhol
templates/riversoft/sms/enu   | Modelos de notificações de sms (padrão riversoft) em ingles

