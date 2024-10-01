---
linkTitle: Instalação
layout: docs
cascade:
  type: docs
sidebar:
  exclude: false
weight: 1
prev: /stcpserver
next: /stcpserver/02-config
# slug:
draft: false
lastmod: 2024-04-04
---
## Distribuição dos pacotes

O pacote de instalação será distribuído através de um link, disponibilizado pela Equipe de Sustentação da Riversoft.

Após extrair o zip com o arquivo executável, os seguintes passos devem ser executados:

{{< icon "chevron-right" >}}Clique no executável para iniciar o processo de instalação.

{{< icon "chevron-right" >}}Esta é a tela de boas-vindas, clique em **Avançar** para continuar.

![](img/install-srv-enterprise.png "Versão Enterprise")
![](img/install-srv-lite.png "Versão Lite")
![](img/install-srv-lite-plus.png "Versão Lite Plus")

Pressione **Voltar** para retornar à tela anterior ou **Cancelar** para interromper o processo de instalação.

{{< icon "chevron-right" >}}Leia cuidadosamente o Contrato de Licença de Uso do Usuário Final e caso concorde com os termos propostos, marque a opção correspondente e pressione o botão **Avançar** para prosseguir com a instalação.

Pressione **Voltar** para retornar à tela anterior ou **Cancelar** para interromper o processo de instalação.

![](img/install-srv-01.png)

{{< icon "chevron-right" >}}Na tela **Informações do Cliente**, informe o Nome do usuário e Empresa.

Clique em **Avançar** para continuar a instalação.

Pressione **Voltar** para retornar à tela anterior ou **Cancelar** para cancelar todo o processo de instalação.

![](img/install-srv-02.png)

{{< icon "chevron-right" >}}Na tela **Pasta de Destino**, clique em **Avançar** para instalar no diretório padrão ou **Alterar** para selecionar outro diretório ou criar um novo.

Pressione **Voltar** para retornar à tela anterior ou **Cancelar** para interromper o processo de instalação.

![](img/install-srv-03.png)


{{< icon "chevron-right" >}}Na tela **Pronto para Instalar** o Programa, verifique se as configurações escolhidas estão corretas e clique em **Instalar** para continuar.

Pressione **Voltar** para retornar à tela anterior ou **Cancelar** para interromper o processo de instalação.

![](img/install-srv-04.png)


{{< icon "chevron-right" >}}Na tela **Conclusão do Installshield**, clique em **Concluir** para finalizar a instalação.

![](img/install-srv-05.png)

## Estrutura dos diretórios

Após a instalação da aplicação, a seguinte árvore de diretórios será criada onde serão armazenadas as informações de configuração, logs e controle.

{{< filetree/container >}}
  {{< filetree/folder name="STCPODT" >}}

    {{< filetree/folder name="`<USUÁRIO>`" state="closed" >}}
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


