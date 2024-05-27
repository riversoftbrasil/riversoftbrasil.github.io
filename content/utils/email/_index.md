---
linkTitle: Notificação por e-mail
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 9
prev: /events
next: /protocols
draft: false
lastmod: 2024-05-27
---
## Introdução

Nesta seção veremos os procedimentos necessários para a configuração e execução do **script VBS**, que pode ser utilizado para enviar, por e-mail, notificações de transferências de arquivos e/ou erros, através do <a href="/stcpclient" target="_blank">STCP OFTP Client</a> {{< icon "arrow-top-right-on-square" >}}

Por se tratar de um script que utiliza uma linguagem universal (Visual Basic Scripting) e distribuída gratuitamente pela Microsoft, podemos customizá-lo para atender as mais diversas necessidades da área de monitoração, assim como filtrar as notificações e erros desejados.

## Download do script VBS

O envio das notificações por email é realizado através do script **stcp-notifica.vbs**. Após o download, o conteúdo do arquivo zipado deverá ser copiado para a pasta Program do diretório de instalação do STCP OFTP Client.

`(Ex. C:\STCPCLT\Program)`

{{< callout type="info" >}}
  O link para download do script é disponibilizado pela Equipe de Sustentação da Riversoft.
{{< /callout >}}

## Configuração do script VBS

Os parâmetros básicos a serem configurados nesse arquivo são:

```vb.net
1. '* -------------------------------------------------------------------------------
2. '* Configuracao diretorios e perfil
3. '*
4. '* appDir => Diretorio de instalacao da aplicacao
5. '* appPerfil => Nome do perfil utilizado
6. '*
7. '* -------------------------------------------------------------------------------
8. appDir = "C:\STCPCLT\"
9. appPerfil = "NOME-PERFIL"
```

Esses parâmetros definem os diretórios de instalação da aplicação e nome do perfil utilizado.

| PARÂMETROS |               DESCRIÇÃO               |
| :--------- | :-----------------------------------: |
| appDir     | Diretório de instalação da aplicação. |
| appPerfil  |       Nome do perfil utilizado.       |

```vb.net
1. '* -------------------------------------------------------------------------------
2. '* Configuracao do e-mail
3. '*
4. '* varFrom => Endereco e-mail do remetente
5. '* varTo => Endereco e-mail do destinatario
6. '* varCC => Endereco e-mail dos destinatarios (com copia)
7. '* varSubject => Assunto do e-mail
8. '*
9. '* -------------------------------------------------------------------------------
10. varFrom = "email@empresa.com.br"
11. varTo = "email@empresa.com.br"
12. varCC = ""
13. varSubject = "STCP - Log de transferencia de arquivos"
```

Esses parâmetros fornecem as informações de configuração para o servidor **SMTP remoto**.

| PARÂMETROS |                                                     DESCRIÇÃO                                                      |
| :--------- | :----------------------------------------------------------------------------------------------------------------: |
| varSMTP    |                                             Endereço do servidor SMTP                                              |
| varPort    |                             Porta do servidor SMTP (Utilizada geralmente a porta 465).                             |
| varUseSSL  |       Uso da Encriptação SSL/TLS. As opções disponíveis são: HABILITADO: **TRUE** e DESABILITADO: **FALSE**        |
| varUserID  |                                        Usuário utilizado para autenticação                                         |
| varPasswd  |                                   Senha do usuário utilizado para autenticação.                                    |
| varAuth    | Tipo de autenticação do servidor SMTP. As opções disponíveis são: NONE: **NONE** BASIC (base64): **1** NTLM: **2** |

## Teste do envio de e-mail

Para realizar a validação das configurações realizadas no item anterior **(CONFIGURAÇÃO DO SCRIPT VBS)**, acesse o Prompt de Comando e digite o comando abaixo.

```sh
cscript C:/STCPCLT/Program/stcp-notifica.vbs TESTE
```

Caso nenhuma mensagem de erro seja apresentada, verifique se um e-mail de teste foi recebido nos
endereços de e-mails configurados.

## Notificação envio e recebimento de arquivos (consolidado)

Neste tipo de notificação, os logs de envio e recebimento de arquivos são enviados no corpo do email de maneira consolidada, registrando os eventos de inicio e fim de conexão com sucesso ou erro, início e fim de transmissão com sucesso ou erro e início e fim de recepção com sucesso ou erro

{{< callout >}}
  O prefixo [ALERTA ERRO] será inserido automaticamente no assunto do e-mail
  enviado, caso um evento de erro seja registrado.
{{< /callout >}}

Após as configurações e testes do script serem realizados, acesse o _STCP OFTP Client Config_, na guia Perfis, selecione o perfil desejado e clique no botão _Propriedades_. Na janela _Propriedades do Perfil_, guia _Avançadas I_, preencha o campo _Executar comando no fim da conexão_, conforme exemplo abaixo:

```powershell
1. cscript //B C:\STCPCLT\Program\stcp-notifica.vbs TRANSF
```

## Notificação envio de arquivos (por arquivo)

Neste tipo de notificação, é enviado um e-mail para cada arquivo transmitido (TX) com sucesso.

Após as configurações e testes do script serem realizados, acesse o _STCP OFTP Client Config_, na guia _Perfis_, selecione o perfil desejado e clique no botão _Propriedades_.

Na janela _Propriedades do Perfil_, guia _Tipos de arquivos_, selecione o tipo de arquivo desejado e clique no botão _Propriedades_. Em _Características da transmissão_, preencha o campo _Executar comando externo_, conforme exemplo abaixo:

```
1. cscript //B C:\STCPCLT\Program\stcp-notifica.vbs TX $OFNAME
```

{{< callout type="info" >}}
 NOTA: O parâmetro **$LFNAME** refere-se a uma variável interna do STCP OFTP que retorna o nome do arquivo enviado com sucesso.
{{< /callout >}}


## Notificação recebimento de arquivos (por arquivo)

Neste tipo de notificação, é enviado um e-mail para cada arquivo recebido (RX) com sucesso. Após as configurações e testes do script serem realizados, acesse o _STCP OFTP Client Config_, na guia _Perfis_, selecione o perfil desejado e clique no botão _Propriedades_.

Na janela _Propriedades do Perfil_, guia _Tipos de arquivos_, selecione o tipo de arquivo desejado e clique no botão _Propriedades_. Em _Características da recepção_, preencha o campo _Executar comando externo_, conforme exemplo abaixo:


```
1. cscript //B C:\STCPCLT\Program\stcp-notifica.vbs RX $OFNAME
```

{{< callout type="info" >}}
NOTA: O parâmetro **$OFNAME** refere-se a uma variável interna do STCP OFTP que retorna o nome do arquivo recebido com sucesso.
{{< /callout >}}

## Notificação de erro

Neste tipo de notificação, é enviado um e-mail para cada erro gerado no processo de transferência de arquivos.

Após as configurações e testes do script serem realizados, acesse o _STCP OFTP Client Config_, e na guia _Avançadas_ clique no botão _Log_. Na janela _Propriedades do Log_, em _Nível de Log_, configure o campo _Executar comando externo_ com o valor 1 e o campo _Comando externo_ conforme exemplo abaixo:

```
1. cscript //B C:\STCPCLT\Program\stcp-notifica.vbs ERRO
```

## Notificação por E-mail através de Scripts VBS

### Introdução

O STCP OFTP Server Lite/Enterprise e STCP OFTP Client nos permite a execução de processos por eventos (início e/ou fim de conexão, transmissão e/ou recepção de arquivos com sucesso, ocorrência de erros, etc.) através de linha de comandos.

Por exemplo, podemos executar um script VBS - previamente configurado - para enviar e-mails para uma determinada área sempre que um arquivo for enviado e/ou recebido com sucesso. Neste mesmo cenário, outro script poderá ser executado sempre que ocorrer alguma falha de conexão ou na transferência dos arquivos. Tais scripts também podem ser utilizados para gerar Traps para um servidor SNMP ou gerar evidências no Event Viewer do sistema operacional.

Este documento tem como finalidade, demonstrar os procedimentos necessários para a configuração e execução dos scripts VBS, responsáveis pelo envio de notificações por e-mail, no STCP. Por se tratar de um script que utiliza uma linguagem universal (Visual Basic Scripting) e distribuída gratuitamente pela Microsoft, podemos customizá-lo para atender as mais diversas necessidades da área de monitoração, assim como filtrar as notificações e erros desejados.

### Configuração de notificações de erro por e-mail

Conforme mencionado no item 1, é possível configurar o STCP para enviar uma notificação por e-mail sempre que houver algum erro no processo de conexão e/ou transferência de arquivos.

Tal procedimento pode ser realizado através do script _STCPEMAILEVT.VBS_, existente na pasta *Program*, do diretório de instalação (Diretório de Controle) da aplicação (Ex C:\STCPODT\Program).

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp; Edite o arquivo _STCPEMAILEVT.VBS_ e preencha as informações conforme a imagem.

{{< callout type="info" >}}
Como padrão para este documento, utilizaremos o utilitário OpenSSL para realização do processo da geração e configuração do certificado digital. O OpenSSL está localizado na Pasta Program do diretório de instalação do STCP OFTP Server (Ex: C:\STCPODT\Program)
{{< /callout >}}


<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp; Além das configurações _strMailFrom_,_strMailTo_ também deverão ser configurados os
parâmetros referentes ao servidor SMTP.

<!-- ![](./imagem/img2.png) -->

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp; Salve o arquivo.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp; Para realizar a validação do funcionamento do script e do servidor SMTP, acesse o "Prompt de Comando" e digite o comando abaixo. Caso nenhuma mensagem de erro seja apresentada, verifique se os e-mails foram recebidos nas contas indicadas.

```
cscript C:\STCPODT\Program\STCPEMAILEVT.VBS NOME-SERVIDOR MSG1 MSG2
```
<!-- ![](./imagem/img3.png) -->

Após a configuração e testes do script VBS, uma alteração nas Propriedades de Log do STCP será necessária, habilitando a execução de um comando externo sempre ocorrer eventos que contenham algum erro (Nível de log = 1) e informando a linha de comando abaixo no parâmetro “Comando externo”.

```
cscript //B C:\STCPODT\Program\STCPEMAILEVT.VBS NOME-SERVIDOR
```
Nota: Observe que logo após o nome do servidor será necessário inserir uma aspas duplas (abre aspas).

<!-- ![](./imagem/img4.png) -->

Após a execução destes procedimentos, clique no botão OK para salvar as alterações e reinicie o serviço do Riversoft STCP OFTP Server para que as estas sejam ativadas.

Uma vez realizadas as configurações com êxito, um e-mail será encaminhado para os destinatários informados no script sempre que um erro ocorrer no processo de transferência de arquivos.

### Configuração de notificações de envio/recebimento de arquivos

Dentre várias outras possibilidades, além das notificações de erro apresentadas no item 2 deste procedimento, também é possível gerar notificações para alertar o envio e/ou recebimento (com sucesso) de arquivos.

Tal procedimento pode ser realizado através do script “stcpemail.vbs”, existente na pasta “Program”, do diretório de instalação (Diretório de Controle) da aplicação (Ex C:\STCPODT\Program).

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">1</span> &nbsp; Edite o arquivo “stcpemail.vbs” e preencha os parâmetros referentes ao servidor SMTP

<!-- ![](./imagem/img5.png) -->

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">2</span> &nbsp;Salve o arquivo.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">3</span> &nbsp; Para realizar a validação do funcionamento do script e do servidor SMTP, acesse o "Prompt de Comando" e digite o comando abaixo. Caso nenhuma mensagem de erro seja apresentada, verifique se os e-mails foram recebidos nas contas indicadas.

```
cscript //B C:\STCPODT\Program\ stcpemail.vbs de@dominio.com.br para@dominio.com.br nome-arquivo-teste
```
<!-- ![](./imagem/img6.png) -->

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">4</span> &nbsp; Acesse o STCP OFTP Server Config (Iniciar – Todos os programas – Riversoft STCP OFTP Server – Riversoft STCP OFTP Server Config) e na guia “Usuários”, selecione o usuário desejado e clique no botão “Propriedades”.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">5</span> &nbsp; Na janela de propriedades do usuário selecionado, na guia “Tipos de arquivos” selecione o tipo “default” ou o tipo de arquivo desejado e clique no botão “Propriedades”.

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">6</span> &nbsp; Na janela de propriedades do tipo de arquivo desejado, no grupo “Características da transmissão”, preencha o parâmetro “Executar comando externo” com a linha de comando abaixo:

```
cscript //B C:\STCPODT\Program\stcpemail.vbs “de@dominio.com.br” para@dominio.com.br $LFNAME
```
Nota: Na linha de comando utilizamos a variável interna do STCP, **$LFNAME**, que nos contém o nome completo do arquivo local. A relação completa das variáveis internas do STCP OFTP Server pode ser obtida no item “Definição das variáveis internas do STCP OFTP Server”, no link: [variáveis internas do STCP](/utils/variables/).

<!-- ![](./imagem/img7.png) -->

<span style="display:inline-block; width: 25px; height: 25px; border-radius: 50%; background-color: #0095C7; color: white; text-align: center; line-height: 25px; font-size: 14px; font-family: Arial;">7</span> &nbsp; Clique no botão **OK** para salvar as alterações.

Uma vez realizadas as configurações com êxito, um e-mail será encaminhado para o destinatário informado, sempre que um arquivo for transmitido com sucesso. O mesmo procedimento poderá ser utilizado para implantar notificações também na recepção de arquivos.
