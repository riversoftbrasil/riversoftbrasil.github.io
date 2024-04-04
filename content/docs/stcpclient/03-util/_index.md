---
linkTitle: Utilização
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 3
prev: /docs/stcpclient/02-config/
next: /docs/stcpclient/04-audit/
# slug:
draft: false
lastmod: 2024-04-01
---
## Utilização

O STCP OFTP Client cria um conjunto individual de subdiretórios para cada Perfil configurado no serviço para controle das transferências e integração com as aplicações externas, conforme mostra figura abaixo:

<Diretório de Dados>\ | Subdiretório de dados configurado.
:----------------     | :-----------
<Diretório do Perfil>\ | Subdiretório individual do Perfil.
CONTROLE              | Subdiretório de controle da aplicação.
ENTRADA\              | Subdiretório onde os arquivos recebidos com sucesso serão disponibilizados.
RESTART               | Subdiretório onde os arquivos que estão em processo de recepção são armazenados temporariamente.
FORMATO               | Subdiretório que contém as definições dos tipos de arquivos.
LOG                   | Subdiretório onde serão armazenados os arquivos de eventos e registro das transferências.
SAIDA\                | Subdiretório onde os arquivos a serem enviados devem ser disponibilizados.
BACKUP                | Subdiretório onde os arquivos enviados com sucesso serão armazenados se a opção de backup do Perfil estiver habilitada.
PENDENTE              | Subdiretório onde o arquivo de controle da transmissão será armazenado temporariamente.
TEMP                  | Subdiretório de uso geral.

Para transmitir, os arquivos devem ser disponibilizados no subdiretório “**SAIDA**” e os arquivos recebidos estarão no subdiretório “**ENTRADA**”.

### Execução através da linha de comando

A sintaxe para executar o STCP OFTP através de linha de comando é a seguinte:

```
STCPCLT.EXE <Arquivo de configuração> [-p –r –t –m –f –w]
```
Parâmetro | Descrição
:-----    | :----
`<arquivo de configuração>`| Define o nome do arquivo de configuração de instalação “CTCP.INI” com o caminho completo.
-p `<nome do perfil>`      | Define o nome do perfil de conexão.
-r `<número de tentativas>`| Define a quantidade de tentativas de conexão.
-t `<intervalo de tentativas>`| Define o intervalo em segundos entre as tentativas.
-m `<modo>` | Define o modo de transferência a ser executado: B, S ou R. /B = Transmissão e recepção /S = Somente transmissão /R = Somente recepção
-f `<filtro de arquivos>`| Define o filtro de arquivos através da utilização de expressão regular.
-w `<Fecha caixa de dialogo>`| Define se a caixa de dialogo será fechada automaticamente no final da execução: 0 ou 1. /0 = Fecha caixa de diálogo /1 = Não fecha a caixa de diálogo

Exemplo:

```pshell
C:\STCPCLT\STCPCLT.EXE C:\STCPCLT\CTCP.INI –p TESTE
```
No exemplo acima, será executada a conexão para o Perfil TESTE para envio e recepção.

Ao término da execução do STCP OFTP, o arquivo _**CLCP.ERR.TXT**_ será criado no subdiretório de instalação, contendo a seguinte linha:
**<código de erro>**
