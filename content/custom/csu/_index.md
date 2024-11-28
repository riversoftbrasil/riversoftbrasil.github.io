---
linkTitle: STCP OFTP Client | CSU
title: 
excludeSearch: true
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: true 
weight: 2
prev: 
next: 
slug: 
draft: false
lastmod: 2024-08-05
cliente: CSU
---

![](img/logo.png)

## Instalação

Antes de iniciar a instalação, verifique os requisitos para instalação e utilização do Riversoft STCP OFTP Client abaixo:

* Processador de 2 gigahertz (GHz)
* 2 gigabytes (GB) de RAM
* 100 megabytes (MB) de espaço disponível em disco rígido para o aplicativo 1
* Sistema operacional Windows 10/11/2012/2016/2019/2022 2

a)	Execute o arquivo no local em que foi salvo para iniciar a instalação e clique no botão Avançar.

![](img/image.png)

b)	Clique em Avançar na tela de boas-vindas para continuar o processo de instalação.

![](img/image-1.png)

c)	Selecione a opção “Aceito os termos do contrato de licença” e clique em Avançar.

![](img/image-2.png)

d)	Preencha corretamente as informações solicitadas e clique em Avançar.

![](img/image-3.png)

e)	Aceite ou altere o diretório de instalação e clique em Avançar.

![](img/image-4.png)

f)	Selecione a opção desejada para que a instalação possa ser iniciada.

![](img/image-5.png)

g)	Para finalizar o processo de instalação, clique em Concluir.

![](img/image-6.png)

## Configuração do usuário e senha de transferência na aplicação


a)	Entre no programa de configuração utilizando o atalho **Iniciar** - **Todos os programas** - **Riversoft STCP OFTP Client 5.3.0.0 CSU**, clique em **Riversoft STCP OFTP Client Config**, selecione o perfil **O0055CSU** e clique em Propriedades.

![](img/image-7.png)

b)	Informe a sua identificação, a sua senha e clique no botão OK para salvar as alterações.

![](img/image-8.png)

c)	Para finalizar a configuração, clique em OK.

![](img/image-9.png)

d)	Após a configuração da identificação e senha terem sido concluídas com sucesso, um atalho para acesso rápido à transferência através do Riversoft STCP OFTP Client será criado na área de trabalho do seu computador.

![](img/image-10.png)

e)	Clique no atalho STCPClient O0055CSU, criado na área de trabalho do seu computador, e verifique se a comunicação foi estabelecida com sucesso.

{{< callout type="info" >}}
Ao ser iniciado, o Riversoft STCP OFTP Client, executa o processo de conexão e verifica se existem arquivos para transmitir e/ou receber. Caso não existam arquivos, a conexão é encerrada e a janela da aplicação fechada automaticamente.
{{< /callout >}}

![](img/image-11.png)

## Como enviar e receber arquivos através do RiverSoft STCP OFTP Client (Manual)

a)	PARA ENVIAR 

Coloque os arquivos que você deseja enviar na pasta SAIDA do Riversoft STCP OFTP Client (Ex. C:\STCPCLT-CSU\O0055CSU\SAIDA) e clique no atalho **STCPClient O0055CSU**, criado na área de trabalho do seu computador.

{{< callout type="info" >}}
Todos os arquivos que estiverem na pasta SAIDA serão transferidos automaticamente e após enviados com sucesso, os mesmos serão movidos da pasta SAIDA para a pasta BACKUP (Ex. C:\STCPCLT-CSU\O0055CSU\SAIDA\BACKUP).
{{< /callout >}}

b)	PARA RECEBER

Clique no atalho STCPClient O0055CSU, criado na área de trabalho do seu computador, e após encerrar a comunicação, os arquivos recebidos estarão disponíveis na pasta ENTRADA do Riversoft STCP OFTP Client (Ex. C:\STCPCLT-CSU\O0055CSU\ENTRADA).

## Como enviar e receber arquivos através do STCP OFTP Client (Automático)

Para automatizar o processo de transferência, O Riversoft STCP OFTP Client pode ser executado através de linha de comando o que permite a sua integração com aplicativos externos ou Agendador de tarefas do sistema operacional

| Parâmetro                | Descrição                                                                                           |
|--------------------------|-----------------------------------------------------------------------------------------------------|
|<arquivo de configuração> | Define o nome do arquivo de configuração de instalação “CTCP.INI” com o caminho completo.           |
| -p <nome do perfil>     | Define o nome do perfil de conexão.                                                                 |
| -r <número de tentativas>| Define a quantidade de tentativas de conexão.                                                       |
| -t <intervalo de tentativas> | Define o intervalo (em segundos) entre as tentativas.                                             |
| -m <modo>              | Define o modo de transferência a ser executado: B, S ou R. <br> B = Transmissão e recepção <br> S = Somente transmissão <br> R = Somente recepção                           |
| -f <filtro de arquivos> | Define o filtro de arquivos através da utilização de expressão regular.                             |
| -w <fecha caixa de diálogo> | Define se a caixa de diálogo será fechada automaticamente no final da execução: 0 ou 1.  <br> 0 = Não fecha caixa de diálogo <br> 1 = Fecha a caixa de diálogo                                        |


```{filename="Exemplo da linha de comando"}


C:\STCPCLT-CSU\Program\stcpclt.exe "C:\STCPCLT-CSU\CTCP.INI" -p O0055CSU -r 5 -t 30 -m B
```

## Registros de transferência (Logs)

O Riversoft STCP OFTP Client cria um conjunto de arquivos de texto diário contendo as informações de transferências (data, identificação, arquivo, operação). Através destes arquivos é possível verificar as ocorrências de sucesso e falhas de conexão e transferência de arquivos.

Os logs do Riversoft STCP OFTP Client estão divididos em duas categorias:

a)	**LOGS DO SISTEMA**

Disponíveis na pasta LOG do diretório de instalação do Riversoft STCP OFTP Client (Ex. C:\STCPCLT-CSU\Log) e são criados diariamente. Registram as informações referentes aos eventos do SISTEMA.

*	Início/Fim do STCP OFTP;
*	Início/Fim de Execução de Comando Externo;
*	Início e Término da Agenda;
*	Erros do Sistema em geral.

A nomenclatura dos arquivos de log, segue o padrão abaixo:

> YYYYMMDD.log.txt <br>
> YYYYMMDD.msg.txt

b)	**LOGS DA COMUNICAÇÃO**

Disponíveis na pasta LOG DO perfil correspondente (Ex. C:\STCPCLT-CSU\O0055CSU\LOG). Registram as informações referentes aos eventos do processo de transferências de um determinado perfil. Cada perfil, registrado no sistema (guia Perfis), possui uma pasta LOG correspondente.

Os eventos listados nestes arquivos podem ser:  

*	Início/Fim de Conexão ENTRADA ou SAIDA;
*	Início/Fim de Sessão;
*	Início/Fim de Transmissão ou Recepção de arquivos;
*	Erros no processo de transferência.

A nomenclatura dos arquivos de log, segue o padrão abaixo:

> YYYYMMDD.O0055CSU.msg.txt

## Configurar para utilizar um servidor proxy para conexão

a)	Entre no programa de configuração utilizando o atalho **Iniciar** - **Todos os programas** - **Riversoft STCP OFTP Client 5.3.0.0 CSU** - **Riversoft STCP OFTP Client Config**. Selecione o perfil **O0055CSU** na guia Perfis e clique em **Propriedades**.

![](img/image-12.png)

b)	Na guia Geral, clique no botão **Configurar**.

![](img/image-13.png)

c)	Na guia Proxy, clique no botão Lê Configuração Proxy do IE para obter as informações do navegador Internet Explorer. Caso o servidor Proxy utilize autenticação será necessário preencher os campos correspondentes.

![](img/image-14.png)


{{< callout type="info" >}}
Algumas configurações de autenticação requerem a informação do servidor de domínio (quando aplicável) no seguinte padrão: <Nome do domínio>\<Usuário do domínio>. Consulte o seu administrador de rede em caso de dúvidas na configuração.
{{< /callout >}}

## Configuração da agenda de execução automática no Windows 10, 11, 2012, 2016, 2019 e 2022

Para executar automaticamente a aplicação de transferência de arquivos, devemos realizar os seguintes passos de configuração das tarefas agendadas do sistema operacional.

a)	Acesse o Agendador de Tarefas dentro de Ferramentas Administrativas.
b)	Clique em Criar Tarefa no painel Ações.

![](img/image-15.png)

c)	Na guia Geral da janela de criação da tarefa configure os campos conforme a sua necessidade. Observe atentamente as opções de segurança conforme as configurações do seu ambiente. 

![](img/image-16.png)

d)	Na guia Disparadores clique no botão **Novo**.

![](img/image-17.png)

e)	Na janela Novo Disparador configure o agendamento conforme desejado e clique no botão OK para salvar as informações.

![](img/image-18.png)

f)	Na guia Ações clique no botão Novo.

![](img/image-19.png)

g)	No campo Programa/script informe a linha de comando (vide exemplo abaixo) utilizada para executar o Riversoft STCP OFTP Client e clique no botão OK.

```
C:\STCPCLT-CSU\Program\stcpclt.exe "C:\STCPCLT-CSU\CTCP.INI" -p O0055CSU -r 5 -t 30 -m B
```

![](img/image-20.png)

{{< callout type="info" >}}
A linha de comando pode ser obtida clicando com o botão direito do mouse no atalho do STCPClient O0055CSU que foi criado na área de trabalho no momento da instalação e configuração do software. Na guia Atalho, copie o conteúdo do campo Destino.
{{< /callout >}}

h)	Clique no botão Sim para confirmar a mensagem sobre a inclusão de argumentos na caixa de texto do Programa.

i)	Após executar os passos descritos, a tarefa criada será exibida na janela principal do Agendador de Tarefas.

![](img/image-21.png)

## Atualização automática

As atualizações de segurança fundamentais ou atualizações de software para o Riversoft STCP OFTP Client são liberadas como atualizações automáticas. 

O Riversoft STCP OFTP Client se conecta ao servidor de atualização da Riversoft e verifica se há atualizações dessa natureza diariamente e, quando uma atualização automática de segurança ou software está disponível, ele a instala automaticamente.

O módulo de atualização automática somente tem acesso a estrutura de diretórios e arquivos relacionados ao Riversoft STCP OFTP Client.

Durante a atualização automática, o Riversoft STCP OFTP Client realiza uma cópia de segurança, dos arquivos que foram atualizados na pasta “UPDATER”, do diretório de instalação da aplicação (Ex. C:\STCPCLT-CSU). Dessa forma em caso de algum problema, é possível restaurar os arquivos anteriores ao processo de atualização.

Os logs contendo as informações sobre a atualização são registrados no arquivo “stcpupdater_client.log", disponível na pasta “UPDATER”, do diretório de instalação da aplicação (Ex. C:\ STCPCLT-CSU).

![](img/image-22.png)

## Arquivo de registro de log das transferências

O Riversoft STCP OFTP Client cria um arquivo diário de auditoria, contendo as informações correspondentes ao início e final da sessão, início e final da transferência dentre outros.

Através desse arquivo é possível criar relatórios e estatísticas de utilização do serviço. O arquivo de auditoria é armazenado no subdiretório de controle LOG com a nomenclatura YYYYMMDD.log.txt. 

Cada linha do arquivo é um registro de formato fixo, contendo as informações descritas a seguir:

| Seq. | Tam. | Formato | Descrição                                                                                              |
|------|------|---------|--------------------------------------------------------------------------------------------------------|
| 1    | 14   | N       | Data e hora da ocorrência (YYYYMMDDhhmmss)                                                             |
| 2    | 4    | N       | Código da operação relacionada a este registro:   <br> 0000 – Início de sessão entrante <br>  0001 – Fim de sessão entrante <br> 0002 – Início de sessão de saída <br> 0003 – Fim de sessão de saída <br>  0004 – Início de transmissão do arquivo  <br> 0005 – Fim de transmissão do arquivo   <br>  0006 – Início de recepção do arquivo <br> 0007 – Fim de recepção do arquivo <br> 0008 – Roteamento de arquivo (STCPREN)                                                                  |
| 3    | 30   | X       | Nome do usuário                                                                                       |
| 4    | 16   | X       | Nome do processo de comunicação                                                                       |
| 5    | 8    | X       | Código do processo                                                                                     |
| 6    | 8    | X       | Código da thread                                                                                      |
| 7    | 6    | N       | Resultado: 000000 – Sucesso                                                                           |
| 8    | 12   | N       | Tamanho do arquivo                                                                                     |
| 9    | 256  | X       | Nome do arquivo                                                                                      |
| 10   | 128  | X       | Informações gerais                                                                                     |

## Tabela de códigos de erros e procedimentos

Caso haja alguma falha ou mau funcionamento do Riversoft STCP OFTP Client, verifique nas tabelas abaixo o código correspondente e o procedimento sugerido.

### Códigos de erro de transferência do protocolo ODETTE

| Código | Descrição                                                                                                     | Procedimentos                                                                                                             |
|--------|---------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------|
| 401    | O nome do arquivo é inválido ou existe um filtro de nomenclatura do arquivo definido.                        | Verifique se existem caracteres inválidos ou espaço em branco no nome do arquivo.  <br> Verifique na configuração usuário/perfil, na guia “Avançada”, se foi definido um filtro de arquivo.                       |
| 402    | Parâmetro Destination inválido.                                                                             | Verifique na configuração do usuário/perfil se existem tipos de arquivos configurados incorretamente.                      |
| 403    | Parâmetro Originator inválido.                                                                              | Verifique na configuração do usuário/perfil se existem tipos de arquivos configurados incorretamente.                      |
| 404    | Formato do registro não suportado.                                                                          | Verifique na configuração do usuário/perfil se existem tipos de arquivos configurados incorretamente.                      |
| 405    | Tamanho do registro não suportado.                                                                          | Verifique na configuração do usuário/perfil se existem tipos de arquivos configurados incorretamente.                      |
| 406    | Tamanho do arquivo excede o máximo permitido.                                                                | Verifique na configuração do usuário/perfil se existem tipos de arquivos configurados incorretamente.                      |
| 410    | Contador do registro inválido.                                                                              | Verifique na configuração do usuário/perfil se existem tipos de arquivos configurados incorretamente.                      |
| 411    | Contador de bytes inválido.                                                                                 | Verifique na configuração do usuário/perfil se existem tipos de arquivos configurados incorretamente.                      |
| 412    | Falha no método de acesso.                                                                                   | Verifique se os diretórios correspondentes ao usuário/perfil foram criados corretamente e têm as permissões necessárias.    |
| 413    | Arquivo duplicado.                                                                                           | A opção de sobrescrever está desabilitada e já existe um arquivo no diretório de “ENTRADA” com o mesmo nome.              |
| 499    | Código não especificado; um erro foi detectado, mas não pode ser adequadamente descrito pelos códigos disponíveis. | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |

### Códigos de erro de sessão do protocolo ODETTE

| Código | Descrição                                               | Procedimentos                                                                                                             |
|--------|---------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------|
| 501    | Comando inválido no pacote ODETTE.                     | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 502    | Violação de protocolo.                                | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 503    | Código do usuário não cadastrado no servidor.         | Verifique se o usuário (Odette ID) já está cadastrado no servidor de transferência.                                       |
| 504    | Senha inválida.                                       | Verifique se a senha utilizada já está cadastrada no servidor de transferência.                                           |
| 505    | Erro no computador local, comunicação finalizando.     | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 506    | Comando contém dados inválidos.                       | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 507    | Tamanho do pacote ODETTE inválido.                     | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 508    | Excedido o limite de recursos ou usuário desabilitado. | Verifique se o usuário cadastrado está habilitado. Verifique se a configuração do número de sessões de transferência é compatível. |
| 509    | Excedido tempo limite de inatividade.                  | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 510    | Modo incompatível.                                    | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 599    | Código não especificado.                              | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |

## Códigos de erro da transferência

| Código | Descrição                                                                                       | Procedimentos                                                                                                             |
|--------|-------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------|
| 1100   | O arquivo contém a extensão de timestamp externa inválida.                                      | Verifique se o timestamp especificado está corretamente definido (YYYYMMDDhhmmss).                                       |
| 1101   | O nome do arquivo excedeu o limite máximo de 26 (vinte e seis) caracteres.                      | Verifique se a configuração de nome longo está habilitada e se o parceiro de transferência incorpora esta opção.         |
| 1102   | O nome do arquivo contém caractere inválido ou espaço em branco.                                 | Remova os caracteres inválidos do nome do arquivo.                                                                       |
| 1103   | O nome do arquivo está bloqueado.                                                               | Verifique se na configuração do usuário/perfil as opções de filtro, na guia “Avançada”, estão ativas.                      |
| 1104   | O tamanho do arquivo excedeu o limite.                                                           | Verifique se na configuração do usuário/perfil as opções de filtro, na guia “Avançada”, estão ativas.                      |


## Códigos de erro da Interface de Comunicação TCP/IP

| Código | Descrição                                                                                              | Procedimentos                                                                                                             |
|--------|--------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------|
| 10048  | Endereço já está em uso. (WSAEADDRINUSE).                                                             | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 10049  | Endereço não está disponível. (WSAEADDRNOTAVAIL).                                                     | Verifique se o endereço IP ou nome estão corretamente configurados e se o servidor de DNS foi localizado.                |
|        |                                                                                                        | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 10050  | A rede está inoperante. (WSAENETDOWN).                                                                 | Verifique se o computador está com acesso à rede local.                                                                    |
|        |                                                                                                        | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 10051  | A rede não foi localizada. (WSAENETUNREACH).                                                           | Verifique se o computador está com acesso à rede local.                                                                    |
|        |                                                                                                        | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 10052  | A conexão de rede foi abortada por um reset. (WSAENETRESET).                                           | Verifique o acesso à rede local ainda está disponível.                                                                     |
|        |                                                                                                        | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 10053  | A conexão de rede foi abortada pelo software. (WSAECONNABORTED).                                       | Verifique se o computador está com acesso à rede local.                                                                    |
|        |                                                                                                        | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 10054  | A conexão de rede foi abortada pelo computador remoto. (WSAECONNRESET).                                | Verifique se o computador está com acesso à rede local.                                                                    |
|        |                                                                                                        | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 10060  | A solicitação de conexão falhou porque o computador remoto não respondeu durante um período de tempo. (WSAETIMEDOUT). | Verifique se o computador tem acesso à rede local e se não existe bloqueio do firewall.                                   |
|        |                                                                                                        | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 10061  | A solicitação de conexão foi recusada porque o computador remoto não tem o serviço disponível. (WSAECONNREFUSED). | Verifique se o computador tem acesso à rede local e se não existe bloqueio do firewall.                                   |
|        |                                                                                                        | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 10064  | A operação falhou porque o computador remoto está desativado. (WSAEHOSTDOWN).                         | Verifique se o computador tem acesso à rede local e se não existe bloqueio do firewall.                                   |
|        |                                                                                                        | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 10065  | Uma operação foi solicitada para um computador remoto desconhecido. (WSAEHOSTUNREACH).                 | Verifique se o computador tem acesso à rede local e se não existe bloqueio do firewall. <br> Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 10805  | A criação da semáfora de controle da recepção falhou.                                                   | Erro interno do protocolo, entre em contato com o departamento técnico.                                                   |
| 10806  | A criação da semáfora de controle do término da recepção falhou.                                        | Erro interno do protocolo, entre em contato com o departamento técnico.                                                   |
| 10807  | A alocação do buffer de recepção falhou.                                                               | Erro interno do protocolo, entre em contato com o departamento técnico.                                                   |
| 10808  | A alocação do buffer de transmissão falhou.                                                             | Erro interno do protocolo, entre em contato com o departamento técnico.                                                   |
| 10809  | Identificador da conexão já foi liberado ou está inválido.                                             | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 10822  | A conexão já foi encerrada.                                                                           | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 10830  | A configuração do modo de comunicação está inválida.                                                   | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 10831  | O endereço do computador remoto não foi configurado.                                                   | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 10900  | A compressão dos dados não foi concluída com sucesso.                                                  | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 10901  | A descompressão dos dados não foi concluída com sucesso.                                                | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 10902  | O tipo do servidor proxy configurado não é suportado.                                                  | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |

## Códigos de erro da interface de comunicação TCP/IP (proxy)

| Código | Descrição                                                                                           | Procedimentos                                                                                                             |
|--------|-----------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------|
| 19401  | A solicitação foi recusada pelo Proxy. (HTTP)                                                      | Verifique se o servidor proxy suporta a comunicação através do método “CONNECT”. Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto. |
| 19402  | Código é reservado para uso futuro. (HTTP)                                                         | Não se aplica.                                                                                                           |
| 19403  | Usuário/senha não foram autenticados. (HTTP)                                                        | Verifique se usuário/senha de acesso ao servidor proxy foram corretamente configurados. Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto. |
| 19404  | A página solicitada não foi encontrada. (HTTP)                                                      | Não se aplica.                                                                                                           |
| 19405  | Método de acesso não é permitido. (HTTP)                                                            | Verifique se não existe uma restrição de acesso no seu firewall. Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto. |
| 19406  | O recurso não tem as características solicitadas. (HTTP)                                            | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 19407  | O servidor Proxy requer autenticação. (HTTP)                                                        | Verifique se o tipo de autenticação do usuário e senha de acesso ao servidor proxy foram corretamente configurados. Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto. |
| 19408  | Tempo expirado para a requisição. (HTTP)                                                            | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 19409  | A requisição não pode ser processada porque há um conflito de recurso. (HTTP)                       | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 19410  | O recurso solicitado não está disponível. (HTTP)                                                    | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 19411  | O servidor recusou a solicitação porque não encontrou o campo ContentLength. (HTTP)                 | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 19412  | O servidor recusou a solicitação porque o campo preconditions está inválido. (HTTP)                 | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 19413  | O servidor recusou a solicitação porque o conteúdo excede o tamanho limite. (HTTP)                 | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 19414  | O servidor recusou a solicitação porque o campo URI excede o limite. (HTTP)                         | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 19415  | O servidor recusou a solicitação porque tem um formato não suportado. (HTTP)                        | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 19416  | O servidor recusou a solicitação porque o campo Range tem um valor não suportado. (HTTP)            | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 19417  | O servidor recusou a solicitação porque o campo Expect tem um valor não suportado. (HTTP)           | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 19500  | O servidor encontrou um erro interno ao tentar processar a solicitação. (HTTP)                      | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 19501  | O servidor não suporta uma funcionalidade solicitada. (HTTP)                                        | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 19502  | O servidor não conseguiu estabelecer contato ou houve falha na conexão com o outro servidor. (HTTP) | Verifique se não existe uma restrição de acesso no seu firewall. Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto. |
| 19503  | O servidor não está disponível para processar a solicitação. (HTTP)                                 | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 19504  | Ocorreu timeout na comunicação entre os servidores. (HTTP)                                           | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |
| 19505  | O servidor recusou a solicitação porque a versão do protocolo não é suportada. (HTTP)               | Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto.       |

## Códigos de erro da interface de comunicação TCP/IP (criptografia TLS)

| Código | Descrição                                                            | Procedimentos                                                                                                             |
|--------|----------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------|
| 20001  | A negociação do protocolo TLS não foi concluída com sucesso.         | Verifique se o protocolo TLS é suportado pelo parceiro de transferência e o certificado está corretamente configurado. Tente realizar a transferência novamente. Caso o erro persista, entre em contato com o suporte técnico do produto. |
