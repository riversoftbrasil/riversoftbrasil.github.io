---
linkTitle: Instalação
layout: docs
cascade:
  type: docs
sidebar:
  exclude: false
weight: 2
prev: /stcpserver/01-introducao
next: /stcpserver/02-configuracao
slug: instalacao
draft: false
---

## Requisitos 

Confira os requisitos de software e hardware da aplicação: 

- Processador de 2 gigahertz (GHz);
- 2 gigabytes (GB) de RAM;
- 150 megabytes (MB) de espaço disponível em disco rígido para o aplicativo; <sup>1</sup>
- Sistema operacional Windows 10/11/2012/2016/2019/2022; <sup>2</sup>
- Banco de dados (SQL Server, MySQL, MariaDB, Oracle); <sup>3</sup>
- Driver ODBC para conexão com o Banco de Dados.


{{< callout type="" >}}
  <sup>1</sup> O espaço disponível para os arquivos transferidos dependerá do volume e política de armazenamento de dados adotada.
{{< /callout >}}

{{< callout type="" >}}
  <sup>2</sup> Server with Desktop Experience.
{{< /callout >}}

{{< callout type="" >}}
  <sup>3</sup> Para versão STCP OFTP Server Enterprise.
{{< /callout >}}

## Distribuição dos pacotes

O pacote de instalação será distribuído através de um link, disponibilizado pela Riversoft.

Após descompactar o arquivo ZIP, procure pelo arquivo executável (.exe) na pasta extraída.

{{% steps %}}

### Execute o instalador

Clique duas vezes no arquivo executável para iniciar o processo de instalação.

Uma janela de boas-vindas será exibida. Leia as informações e clique em "Avançar" para prosseguir.

> [!NOTE] Observação
> A tela de boas-vindas pode variar dependendo da versão do produto (Enterprise, Lite ou Lite Plus), como mostrado nas imagens abaixo:

![](img/install-srv-enterprise.png "Versão Enterprise")
![](img/install-srv-lite.png "Versão Lite")
![](img/install-srv-lite-plus.png "Versão Lite Plus")

A partir deste ponto, o processo de instalação guiará você por etapas adicionais. 

As próximas etapas incluem a seleção do local de instalação, a configuração de componentes adicionais e a aceitação dos termos de licença.

Pressione "Voltar" para retornar à tela anterior ou ""Cancelar"" para interromper o processo de instalação.

### Contrato de licença

Leia cuidadosamente o Contrato de Licença de Uso do Usuário Final e caso concorde com os termos propostos, marque a opção correspondente e pressione o botão "Avançar" para prosseguir com a instalação.

![](img/install-srv-01.png)

Pressione "Voltar" para retornar à tela anterior ou ""Cancelar"" para interromper o processo de instalação.

### Identificação 

Na tela "Informações do cliente", informe o Nome do usuário e Empresa.

![](img/install-srv-02.png)

Após preencher os campos, clique em "Avançar" para prosseguir com a instalação.

Pressione "Voltar" para retornar à tela anterior ou "Cancelar" para cancelar todo o processo de instalação.

### Diretório de instalação

Na tela "Pasta de destino", clique em "Avançar" para instalar no diretório padrão ou "Alterar" para selecionar outro diretório ou criar um novo.

![](img/install-srv-03.png)

Pressione "Voltar" para retornar à tela anterior ou "Cancelar" para interromper o processo de instalação.

### Confirmação de instalação

Antes de finalizar a instalação, verifique se as configurações escolhidas estão corretas e prossiga com a instalação. 

Caso precise revisar ou alterar as configurações em telas anteriores, clique em "Voltar".

![](img/install-srv-04.png)

Por fim, clique em "Concluir" para finalizar a instalação.

![](img/install-srv-05.png)

{{% /steps %}}

## Estrutura dos diretórios

Após a instalação da aplicação, a seguinte árvore de diretórios será criada onde serão armazenadas as informações de configuração, logs e controle.

{{< filetree/container >}}
  {{< filetree/folder name="STCPODT" >}}

    {{< filetree/folder name="`<USUÁRIO>`" state="open" >}}
      {{< filetree/folder name="CONTROLE" state="closed" >}}
      {{< /filetree/folder >}}

      {{< filetree/folder name="ENTRADA" state="closed" >}}
        {{< filetree/folder name="RESTART" state="closed" >}}
        {{< /filetree/folder >}}
      {{< /filetree/folder >}}

      {{< filetree/folder name="FORMATO" state="closed" >}}
        {{< filetree/file name="default" >}}
      {{< /filetree/folder >}}

      {{< filetree/folder name="LOG" state="closed" >}}
      {{< /filetree/folder >}}

      {{< filetree/folder name="SAIDA" state="closed" >}}
        {{< filetree/folder name="BACKUP" state="closed" >}}
        {{< /filetree/folder >}}

        {{< filetree/folder name="PENDENTE" state="closed" >}}
        {{< /filetree/folder >}}
      {{< /filetree/folder >}}

      {{< filetree/folder name="TEMP" state="closed" >}}
      {{< /filetree/folder >}}


    {{< /filetree/folder >}}

    {{< filetree/folder name="Certs" state="closed" >}}
    {{< /filetree/folder >}}

    {{< filetree/folder name="Debug" state="closed" >}}
    {{< /filetree/folder >}}

    {{< filetree/folder name="Keys" state="closed" >}}
    {{< /filetree/folder >}}

    {{< filetree/folder name="Samples" state="closed" >}}
      {{< filetree/file name="LicencaSTCP.rtf" >}}
    {{< /filetree/folder >}}

    {{< filetree/folder name="Trastab" state="closed" >}}
      {{< filetree/file name="ANSI2E.TAB" >}}
      {{< filetree/file name="ASC2EBC.TAB" >}}
      {{< filetree/file name="E2ANSI.TAB" >}}
      {{< filetree/file name="EBC2ASC.TAB" >}}
      {{< filetree/file name="ODTA2E.TAB" >}}
      {{< filetree/file name="ODTE2A.TAB" >}}
      {{< filetree/file name="STDA2E.TAB" >}}
      {{< filetree/file name="STDE2E.TAB" >}}
    {{< /filetree/folder >}}

    {{< filetree/folder name="Program" state="closed" >}}
      {{< filetree/file name="Riversoft STCP OFTP Server Console" >}}
      {{< filetree/file name="Riversoft STCP OFTP Log Viewer (Text)" >}}
      {{< filetree/file name="Riversoft STCP OFTP Rename Config" >}}
      {{< filetree/file name="Riversoft STCP OFTP Server Manager" >}}
      {{< filetree/file name="Riversoft STCP OFTP Updater" >}}
      {{< filetree/file name="Riversoft STCP OFTP Server Config" >}}
      {{< filetree/file name="apitcp.dll" >}}
      {{< filetree/file name="apiossl.dll" >}}
      {{< filetree/file name="netlink.dll" >}}
      {{< filetree/file name="STCPUpdClt_x64.exe" >}}
      {{< filetree/file name="STCPUpdClt_x86.exe" >}}
      {{< filetree/file name="STCPUbbCad.exe" >}}
      {{< filetree/file name="stcpsigner.exe" >}}
      {{< filetree/file name="STCPRenCfg.exe" >}}
      {{< filetree/file name="stcpren_3_2.exe" >}}
      {{< filetree/file name="stcppswd.exe" >}}
      {{< filetree/file name="stcpmon.exe" >}}
      {{< filetree/file name="STCPConfigurationManager.exe" >}}
      {{< filetree/file name="STCPLogViewer.exe" >}}
      {{< filetree/file name="stcplogagent.exe" >}}
      {{< filetree/file name="STCPFileConv.exe" >}}
      {{< filetree/file name="STCPFileConcat.exe" >}}
      {{< filetree/file name="ctcpsvc.exe" >}}
      {{< filetree/file name="STCPConsole.exe" >}}
      {{< filetree/file name="stcpchangeparam.exe" >}}
      {{< filetree/file name="StcpCfg.exe" >}}
      {{< filetree/file name="stcplogodbcv2.dll" >}}
      {{< filetree/file name="stcplogtxt.dll" >}}
      {{< filetree/file name="stcplogodbc.dll" >}}
      {{< filetree/file name="stcpauthwin.dll" >}}
      {{< filetree/file name="stcptokenhash.dll" >}}
      {{< filetree/file name="openssl.cnf" >}}
      {{< filetree/file name="openssl.exe" >}}
      {{< filetree/file name="stcpemail.vbs" >}}
      {{< filetree/file name="STCPEMAILEVT.VBS" >}}
      {{< filetree/file name="STCPUpdClt_x64.lib" >}}
      {{< filetree/file name="STCPUpdClt_x86.lib" >}}
    {{< /filetree/folder >}}

    {{< filetree/folder name="Log" state="closed" >}}
    {{< /filetree/folder >}}

    {{< filetree/folder name="Temp" state="closed" >}}
    {{< /filetree/folder >}}

    {{< filetree/file name="stcpconsole.ini" >}}
    {{< filetree/file name="stcprenfiles.ini" >}}
    {{< filetree/file name="`<USER>`.ini" >}}
    {{< filetree/file name="CTCPSCHED.ini" >}}
    {{< filetree/file name="CTCP.ini" >}}

  {{< /filetree/folder >}}

{{< /filetree/container >}}

Para cada **usuário** configurado no serviço, é criado um conjunto individual de subdiretórios para controle das transferências e integração com as aplicações externas, conforme mostra a tabela abaixo:

| <Diretório de Dados>\       | Subdiretório de dados configurado.                                                                                       |
| :-------------------------- | :----------------------------------------------------------------------------------------------------------------------- |
| **<Diretório do Usuário>**\ | Subdiretório individual do usuário.                                                                                      |
| **CONTROLE**                | Subdiretório de controle da aplicação.                                                                                   |
| **ENTRADA**\                | Subdiretório onde os arquivos recebidos com sucesso serão disponibilizados.                                              |
| **RESTART**                 | Subdiretório onde os arquivos que estão em processo de recepção são armazenados temporariamente.                         |
| **FORMATO**                 | Subdiretório que contém as definições dos tipos de arquivos.                                                             |
| **LOG**                     | Subdiretório onde serão armazenados os arquivos de eventos e registro das transferências.                                |
| **SAIDA**\                  | Subdiretório onde os arquivos a serem enviados devem ser disponibilizados.                                               |
| **BACKUP**                  | Subdiretório onde os arquivos enviados com sucesso serão armazenados se a opção de backup do usuário estiver habilitada. |
| **PENDENTE**                | Subdiretório onde o arquivo de controle da transmissão será armazenado temporariamente.                                  |
| **TEMP**                    | Subdiretório de uso geral.                                                                                               |

Para **transmitir**, os arquivos devem ser disponibilizados no subdiretório **SAIDA** e os arquivos recebidos estarão no subdiretório **ENTRADA**.

## Serviço do STCP OFTP Server

Para que seja possível criar e iniciar o serviço do STCP OFTP Server, utilizaremos o _STCP OFTP Server Manager_.

O STCP OFTP Server Manager é um sistema gerenciador de serviços STCP, que é similar ao gerenciador de serviços do Windows, embora seja usado somente para manipular serviços da família de _produtos do STCP_.

Esse sistema permite que seja instalado ou desinstalado o serviço do Riversoft STCP OFTP Server Enterprise (STCPSrv_1) ou Lite (STCPSrvLite_1).

Também é permitido iniciar, parar e reiniciar um serviço, desde que se tenham as permissões apropriadas. É recomendado que a aplicação seja iniciada como _administrador_

{{% steps %}}

### Acesse o configurador

Acesse o STCP OFTP Server Configuration Manager. O programa está localizado no menu Iniciar do Windows, em "Todos os Programas" -> "Riversoft STCP OFTP Server".

No Configuration Manager, selecione o serviço desejado. As opções podem incluir "Riversoft STCP OFTP Server Enterprise 1" ou "Lite 1".

Clique no botão "Instalar serviço".

![](img/service-01.png)

### Confirmação 

Uma mensagem confirmando que o serviço foi instalado com sucesso será exibida. 

![](img/service-02.png)

O serviço foi instalado e configurado com êxito. Clique em "OK" para finalizar o processo.

### Iniciar serviço

Selecione o serviço recém-criado e clique no botão _Iniciar_.

![](img/service-03.png)

### Finalização

O serviço será iniciado e seu status alterado para _Iniciado_. Esse serviço também pode ser criado e removido pelo prompt de comando (cmd) do sistema operacional, como por exemplo: 

![](img/service-04.png "Serviço iniciado no STCP OFTP Server Configuration Manager")
<br>
![](img/service-05.png "Serviço iniciado no Windows")

{{% /steps %}}
