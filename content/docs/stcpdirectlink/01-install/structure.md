---
linkTitle: Estrutura de diretórios
layout: docs
sidebar:
  exclude: false
weight: 3
prev: /dirl/install/requirements
next: /dirl/configuration
---

## Estrutura dos diretórios
Após ser instalado a seguinte estrutura de pastas e arquivos devem estar presentes:

{{< filetree/container >}}
  {{< filetree/folder name="STCPDirectLink" state="closed">}}
  {{< filetree/folder name="bin" state="closed" >}}
  {{< /filetree/folder >}}

  {{< filetree/folder name="configs" state="open" >}}
      {{< filetree/file name="svvconfig" >}}
      {{< filetree/file name="userconfig" >}}
  {{< /filetree/folder >}}

  {{< filetree/folder name="logs" state="closed" >}}
  {{< /filetree/folder >}}

  {{< filetree/folder name="license" state="closed" >}}
  {{< /filetree/folder >}}

  {{< filetree/folder name="static" state="open" >}}
    {{< filetree/file name="css" >}}
    {{< filetree/file name="images" >}}
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
configs/svcconfig             | Configurações extras de serviços de redes (para integração ao STCPGemini)
configs/userconfig            | Configurações extras de usuários (para integração ao STCPGemini)
logs                          | Logs de acesso a aplicação
static                        | Páginas estáticas da aplicação
static/css                    | Configurações dos estilos de página
static/images                 | Imagens utilizadas pela aplicação
static/portal                 | Aplicação do portal de transferência (flutter)
templates                     | Modelos de notificações de email/sms/páginas de erros
templates/riversoft/email     | Modelos de notificações de email (padrão riversoft)
templates/riversoft/email/ptb | Modelos de notificações de email (padrão riversoft) em português
templates/riversoft/email/esp | Modelos de notificações de email (padrão riversoft) em espanhol
templates/riversoft/email/enu | Modelos de notificações de email (padrão riversoft) em ingles
templates/riversoft/page      | Modelos de notificações de páginas de erros (padrão riversoft)
templates/riversoft/page/ptb  | Modelos de notificações de páginas de erros (padrão riversoft) em português
templates/riversoft/page/esp  | Modelos de notificações de páginas de erros (padrão riversoft) em espanhol
templates/riversoft/page/enu  | Modelos de notificações de páginas de erros (padrão riversoft) em ingles
templates/riversoft/sms       | Modelos de notificações de sms (padrão riversoft)
templates/riversoft/sms/ptb   | Modelos de notificações de sms (padrão riversoft) em português
templates/riversoft/sms/esp   | Modelos de notificações de sms (padrão riversoft) em espanhol
templates/riversoft/sms/enu   | Modelos de notificações de sms (padrão riversoft) em ingles