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

O pacote de instalação será distribuído através de um link, disponibilizado pela Riversoft.

Após descompactar o arquivo ZIP, procure pelo arquivo executável na pasta extraída.

{{% steps %}}

### Execute o instalador

Clique duas vezes no arquivo executável para iniciar o processo de instalação.

Uma janela de boas-vindas será exibida. Leia as informações e clique em “Avançar” para prosseguir.

![](img/clt-01.png)

![](img/clt-02.png)

Pressione "Voltar" para retornar à tela anterior ou "Cancelar" para interromper o processo de instalação.

### Contrato de licença

Leia cuidadosamente o Contrato de Licença de Uso do Usuário Final e caso concorde com os termos propostos, marque a opção correspondente e pressione o botão “Avançar” para prosseguir com a instalação.

![](img/clt-03.png)

Pressione "Voltar" para retornar à tela anterior ou "Cancelar" para interromper o processo de instalação.

### Identificação

Na tela “Informações do cliente”, informe o Nome do usuário e a Organização.

![](img/clt-04.png)

Após preencher os campos, clique em “Avançar” para prosseguir com a instalação.

Pressione “Voltar” para retornar à tela anterior ou “Cancelar” para cancelar todo o processo de instalação.

### Diretório 

Na tela “Pasta de destino”, clique em “Avançar” para instalar no diretório padrão ou “Alterar” para selecionar outro diretório ou criar um novo.

![](img/clt-05.png)

Pressione "Voltar" para retornar à tela anterior ou "Cancelar" para interromper o processo de instalação.

### Confirmação de Instalação

Antes de finalizar a instalação, verifique se as configurações escolhidas estão corretas e prossiga com a instalação.

![](img/clt-06.png)

Caso precise revisar ou alterar as configurações em telas anteriores, clique em “Voltar”.

Por fim, clique em “Concluir” para finalizar a instalação.

![](img/clt-07.png)

{{% /steps %}}

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




