---
linkTitle: Serviço do STCP Server
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 5
prev: 
next:
draft: false
slug: servico-stcpserver
---

## Serviço do STCP OFTP Server

Para que sejá possível criar e iniciar o serviço do STCP OFTP Server, utilizaremos o **STCP OFTP Server Manager**.

O STCP OFTP Server Manager é um sistema gerenciador de serviços STCP, é similar ao gerenciador de serviços do Windows, embora seja usado somente para manipular serviços da família de **produtos do STCP**.

Esse sistema permite que seja instalado/desinstalado o serviço do Riversoft STCP OFTP Server Enterprise (STCPSrv_1) ou Lite (STCPSrvLite_1).

Também é permitido iniciar, parar e reiniciar um serviço, desde que se tenham as permissões apropriadas.

{{< icon "arrow-right-circle" >}}Acesse o STCP OFTP Server Configuration Manager (**Iniciar - Todos os programas - Riversoft STCP OFTP Server**), selecione o serviço _Riversoft STCP OFTP Server Enterprise 1/Lite 1_ e clique no botão _Instalar serviço_.

![](img/service-01.png)

{{< icon "arrow-right-circle" >}}Uma mensagem confirmando que o serviço foi instalado com sucesso será exibida. Clique em _OK_ para finalizar.

![](img/service-02.png)

{{< icon "arrow-right-circle" >}}Selecione o serviço recém-criado e clique no botão _Iniciar_.

![](img/service-03.png)

{{< icon "arrow-right-circle" >}}O serviço será iniciado e seu status alterado para _Iniciado_. Esse servico também pode ser criado e removido pelo prompt de comando (cmd) do sistema operacional.

![](img/service-04.png "Serviço iniciado no STCP OFTP Server Configuration Manager")
<br>
![](img/service-05.png "Serviço iniciado no Windows")