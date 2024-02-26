---
linkTitle: Utilização
layout: docs
cascade:
  type: docs
sidebar:
  exclude: false
weight: 3
prev:
next:
---
# Como utilizar o STCP OFTP Server

O STCP OFTP Server para cada usuário configurado no serviço cria um conjunto individual de subdiretórios para controle das transferências e integração com as aplicações externas, conforme mostra figura abaixo:

<Diretório de Dados>\ | Subdiretório de dados configurado.
:---                  | :---
**<Diretório do Usuário>**\ | Subdiretório individual do usuário.
**CONTROLE**          | Subdiretório de controle da aplicação.
**ENTRADA**\          | Subdiretório onde os arquivos recebidos com sucesso serão disponibilizados.
**RESTART**           | Subdiretório onde os arquivos que estão em processo de recepção são armazenados temporariamente.
**FORMATO**           | Subdiretório que contém as definições dos tipos de arquivos.
**LOG**               | Subdiretório onde serão armazenados os arquivos de eventos e registro das transferências.
**SAIDA**\            | Subdiretório onde os arquivos a serem enviados devem ser disponibilizados.
**BACKUP**            | Subdiretório onde os arquivos enviados com sucesso serão armazenados se a opção de backup do usuário estiver habilitada.
**PENDENTE**          | Subdiretório onde o arquivo de controle da transmissão será armazenado temporariamente.
**TEMP**              | Subdiretório de uso geral.

Para transmitir, os arquivos devem ser disponibilizados no subdiretório "**SAIDA** e os arquivos recebidos estarão no subdiretório "**ENTRADA**".

### Como executar o STCP OFTP Server através da linha de comando

A sintaxe para executar o STCP OFTP Server através da linha de comando é a seguinte:

```shell
CTCPSVC.EXE <Arquivo de configuração> [-addservice|-delservice|-noservice]
```
Parâmetro  | Descrição
:---       | :---
<arquivo de configuração>| Define o nome do arquivo de configuração de instalação "CTCP.INI" com o caminho completo.
-addservice| Adiciona o STCP OFTP Server como um serviço do sistema operacional.
-delservice| Remove o STCP OFTP Server como um serviço do sistema operacional.
-noservice | Executa o STCP OFTP Server como uma aplicação.

Exemplo:

```shell
C:/STCPODT/CTCPSVC.EXE C:/STCPCLT/CTCP.INI –noservice
```
No exemplo acima, será executada o STCP OFTP Server como uma aplicação.
