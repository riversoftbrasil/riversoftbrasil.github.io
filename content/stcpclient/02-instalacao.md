---
linkTitle: Instalação
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 2
prev: /stcpclient/01-introducao
next: /stcpclient/02-config/
draft: false
slug: instalacao
---

## Requisitos

- Processador de 2 gigahertz (GHz)
- 2 gigabytes (GB) de RAM
- 100 megabytes (MB) de espaço disponível em disco rígido para o aplicativo <sup>1</sup>
- Sistema operacional Windows 10/11/2012/2016/2019/2022 <sup>2</sup>


{{< callout type="" >}}
  <sup>1</sup> O espaço disponível para os arquivos transferidos dependerá do volume e política de armazenamento de dados adotada.
{{< /callout >}}

{{< callout type="" >}}
  <sup>2</sup> Server with Desktop Experience.
{{< /callout >}}

## Distribuição dos Pacotes

O pacote de instalação será distribuído através de um link pela Equipe de Sustentação da Riversoft.

Após extrair o zip com o executável, os seguintes passos devem ser executados:

{{< icon "arrow-right-circle" >}}Clique em **Avançar**

![](img/clt-02.png)

<br>

{{< icon "arrow-right-circle" >}}Esta é a tela de boas-vindas, clique no botão **Avançar** para continuar.

Pressione **Voltar** para retornar à tela anterior ou **Cancelar** para interromper o processo de instalação.

![](img/clt-01.png)

{{< icon "arrow-right-circle" >}}Leia cuidadosamente o **Contrato de Licença de Uso do Usuário Final** e caso concorde com os termos propostos, marque a opção correspondente e pressione o botão **Avançar** para prosseguir com a instalação.

Pressione **Voltar** para retornar à tela anterior ou **Cancelar** para interromper o processo de instalação.

![](img/clt-03.png)

{{< icon "arrow-right-circle" >}}Na tela **Informações do Cliente**, informe o Nome do usuário e Organização (Empresa).

{{< icon "arrow-right-circle" >}}Clique no botão **Avançar** para continuar a instalação.

Pressione **Voltar** para retornar à tela anterior ou **Cancelar** para cancelar todo o processo de instalação.

![](img/clt-04.png)

{{< icon "arrow-right-circle" >}}Na tela **Pasta de Destino**, clique em **Avançar** para instalar no diretório padrão ou **Alterar** para selecionar outro diretório ou criar um novo.

Pressione **Voltar** para retornar à tela anterior ou **Cancelar** para interromper o processo de instalação.

![](img/clt-05.png)

{{< icon "arrow-right-circle" >}}Na tela **Pronto para Instalar o Programa**, clique em **Qualquer pessoa que utilizar este computador (todos os usuários)** ou **Somente para mim (Riversoft)** para instalar.

Pressione **Voltar** para retornar à tela anterior ou **Cancelar** para interromper o processo de instalação.

![](img/clt-06.png)

{{< icon "arrow-right-circle" >}}Na tela de **Conclusão**, clique no botão **Concluir** para finalizar a instalação.

![](img/clt-07.png)

## Estrutura dos Diretórios

Após a instalação, teremos a seguinte árvore de diretórios, onde serão armazenadas as informações de **configuração**, **logs** e **controle**.

{{< filetree/container >}}
  {{< filetree/folder name="STCPCLT" >}}
    {{< filetree/folder name="`<PERFIL>`" state="closed" >}}

    {{< filetree/folder name="CONTROLE">}}
    {{< /filetree/folder >}}

    {{< filetree/folder name="ENTRADA">}}
      {{< filetree/folder name="RESTART">}}
      {{< /filetree/folder >}}
    {{< /filetree/folder >}}

    {{< filetree/folder name="LOG">}}
    {{< /filetree/folder >}}

    {{< filetree/folder name="SAÍDA">}}

      {{< filetree/folder name="BACKUP">}}
      {{< /filetree/folder >}}

      {{< filetree/folder name="PENDENTE">}}
      {{< /filetree/folder >}}
    {{< /filetree/folder >}}

    {{< /filetree/folder >}}

  {{< filetree/folder name="TEMP" state="closed">}}
  {{< /filetree/folder >}}

  {{< filetree/folder name="Certs" state="closed">}}
    {{< filetree/file name="stcpupdater.cer" >}}
    {{< filetree/file name="stcpupdatercerts.pem" >}}
  {{< /filetree/folder >}}

  {{< filetree/folder name="Debug" state="closed">}}
  {{< /filetree/folder >}}
  {{< filetree/folder name="Keys" state="closed">}}
  {{< /filetree/folder >}}
  {{< filetree/folder name="Log" state="closed">}}
  {{< /filetree/folder >}}

  {{< filetree/folder name="Program" state="closed">}}
    {{< filetree/file name="apiossl.dll" >}}
    {{< filetree/file name="apitcp.dll" >}}
    {{< filetree/file name="msvcr100.dll" >}}
    {{< filetree/file name="netlink.dll" >}}
    {{< filetree/file name="openssl.cnf" >}}
    {{< filetree/file name="openssl.exe" >}}
    {{< filetree/file name="Riversoft STCP OFTP Client Config" >}}
    {{< filetree/file name="Riversoft STCP OFTP Log Viewer" >}}
    {{< filetree/file name="Riversoft STCP OFTP Rename Config" >}}
    {{< filetree/file name="Riversoft STCP OFTP Updater" >}}
    {{< filetree/file name="StcpCfg.exe"  >}}
    {{< filetree/file name="stcpchangeparam.exe" >}}
    {{< filetree/file name="stcpclt.exe" >}}
    {{< filetree/file name="stcpemail.vbs" >}}
    {{< filetree/file name="STCPEMAILEVT.VBS" >}}
    {{< filetree/file name="STCPFileConcat.exe" >}}
    {{< filetree/file name="STCPFileConv.exe" >}}
    {{< filetree/file name="stcplogodbc.dll" >}}
    {{< filetree/file name="stcplogtxt.dll" >}}
    {{< filetree/file name="STCPLogViewer.exe" >}}
    {{< filetree/file name="stcppswd.exe" >}}
    {{< filetree/file name="stcpren_3_2.exe" >}}
    {{< filetree/file name="STCPRenCfg.exe" >}}
    {{< filetree/file name="stcptokenhash.dll" >}}
    {{< filetree/file name="STCPUpdClt_x64.exe" >}}
    {{< filetree/file name="STCPUpdClt_x64.lib" >}}
    {{< filetree/file name="STCPUpdClt_x86.exe" >}}
    {{< filetree/file name="STCPUpdClt_x86.lib" >}}

  {{< /filetree/folder >}}

  {{< filetree/folder name="Samples" state="closed">}}
    {{< filetree/file name="LicencaSTCPClient-PTB-Rev3.0.rtf" >}}
    {{< filetree/file name="openssl.cnf" >}}
    {{< filetree/file name="stcpren_3_2.ini" >}}
  {{< /filetree/folder >}}

  {{< filetree/folder name="Temp" state="closed">}}
  {{< /filetree/folder >}}

  {{< filetree/folder name="Transtab" state="closed">}}
    {{< filetree/file name="ANSI2E.TAB" >}}
    {{< filetree/file name="ASC2EBC.TAB" >}}
    {{< filetree/file name="EBC2ASC.TAB" >}}
    {{< filetree/file name="E2ANSI.TAB" >}}
    {{< filetree/file name="ODTA2E.TAB" >}}
    {{< filetree/file name="ODTE2A.TAB" >}}
    {{< filetree/file name="STDA2E.TAB" >}}
    {{< filetree/file name="STDE2A.TAB" >}}

  {{< /filetree/folder >}}

  {{< filetree/file name="CTCP.ini" >}}
  {{< filetree/file name="`<PERFIL>`.ini" >}}

  {{< /filetree/folder >}}

{{< /filetree/container >}}

## Diretórios de Perfis

O STCP OFTP Client cria um conjunto individual de subdiretórios para cada Perfil configurado no serviço para controle das transferências e integração com as aplicações externas.

Veja:

{{< filetree/container >}}
  {{< filetree/folder name="STCPCLT" >}}
    {{< filetree/folder name="`<NOME DO PERFIL>`" state="open" >}}

    {{< filetree/folder name="CONTROLE" state="closed">}}
    {{< /filetree/folder >}}

    {{< filetree/folder name="ENTRADA" >}}
      {{< filetree/folder name="RESTART" state="closed">}}
      {{< /filetree/folder >}}
    {{< /filetree/folder >}}

    {{< filetree/folder name="LOG" state="closed">}}
    {{< /filetree/folder >}}

    {{< filetree/folder name="SAÍDA">}}

      {{< filetree/folder name="BACKUP" state="closed">}}
      {{< /filetree/folder >}}

      {{< filetree/folder name="PENDENTE" state="closed">}}
      {{< /filetree/folder >}}
    {{< /filetree/folder >}}

    {{< /filetree/folder >}}

  {{< filetree/file name="`<NOME DO PERFIL>`.ini" >}}

  {{< /filetree/folder >}}

{{< /filetree/container >}}

| <Diretório de Dados>\  | Subdiretório de dados configurado.                                                                                      |
| :--------------------- | :---------------------------------------------------------------------------------------------------------------------- |
| <Diretório do Perfil>\ | Subdiretório individual do Perfil.                                                                                      |
| CONTROLE               | Subdiretório de controle da aplicação.                                                                                  |
| ENTRADA\               | Subdiretório onde os arquivos recebidos com sucesso serão disponibilizados.                                             |
| RESTART                | Subdiretório onde os arquivos que estão em processo de recepção são armazenados temporariamente.                        |
| FORMATO                | Subdiretório que contém as definições dos tipos de arquivos.                                                            |
| LOG                    | Subdiretório onde serão armazenados os arquivos de eventos e registro das transferências.                               |
| SAIDA\                 | Subdiretório onde os arquivos a serem enviados devem ser disponibilizados.                                              |
| BACKUP                 | Subdiretório onde os arquivos enviados com sucesso serão armazenados se a opção de backup do Perfil estiver habilitada. |
| PENDENTE               | Subdiretório onde o arquivo de controle da transmissão será armazenado temporariamente.                                 |
| TEMP                   | Subdiretório de uso geral.                                                                                              |

Para transmitir, os arquivos devem ser disponibilizados no subdiretório **SAIDA** e os arquivos recebidos estarão no subdiretório **ENTRADA**.




