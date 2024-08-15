---
linkTitle: Configuração
title: Configuração do Gemini Server
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
draft:
lastmod: 2024-06-13
---
## Criação do arquivo de configuração

Concluída a instalação, siga os passos:

* Acesse a pasta de configurações em /usr/local/stcp/configs
* Verifique a existência do arquivo example-stcpserver.config.json
* Renomeie-o ou faça uma cópia para stcpserver.config.json

```
cp example-stcpserver.config.json stcpserver.config.json
```

## Inserção do nome da instância

Para configurar a instância criada no STCP Gemini Portal, deve-se inserir seu nome no campo "ApplName". Ao fazer isto ela a instância configurada será a executada pela aplicação.

```bash
[root@SRS00HOM1L configs] vi stcpserver.config.json
{
 "Module": "stcpgemini-server",
 "Version": "1.0",
 "Description": "Configuration parameters STCP Gemini OFTP Server Linux",
 "Modules":{
 "STCPCore":{
 "ApplName":"InstanciaTeste",
 "ApplDescription":"",
 "ApplUser": "stcp",
 "ApplGroup":"stcp",
 "ApplDir":"/usr/local/stcp/",
 "ApplLockDir":"/usr/local/stcp/control",
 "ApplPidFile":"/var/run/stcpserver.pid",
 "ApplUmask":"0022",
 "ApplDaemon":"0",
 "ApplMsgFileName":"/usr/local/stcp/configs/stcplang.json",
 "ApplMsgLanguage":"ptb",
 "ApplConfigPassPhrase": "Stcp@Gemini",
 "ApplDebug":"0",
 "ApplMaximunConsoleMsgs":"100",
 "ApplMaximunAsyncProcesses":"2048"
 },
 "STCPCfg":{
 "DLLName":"libstcpcfgmysql.so",
 "DBName":"STCPCFG_DB",
 "DBHost":"192.168.0.1",
 "DBPort":"3306",
 "DBUser":"root",
 "DBPswd":"root",
 "MaxConfigTxt":"8192",
 "MaxExtraTxt":"8192"
  }
 }
}
```

{{< callout type="info" >}}
**AVISO:** Para iniciar o serviço do STCP Gemini Server é necessário ter uma instância configurada através do STCPGemini Portal.
{{< /callout >}}

## Start do serviço

Por fim, para iniciar o processo do serviço, execute os comandos a seguir:

```
$ systemctl start stcpgemini-server
```
Para verificar o status do serviço, execute o comando abaixo e verifique se possui a mensagem *running*.

```
$ systemctl status stcpgemini-server
```

{{< callout type="info" >}}
**AVISO:** Caso encontre algum problema no processo de implantação, entre em contato com a equipe Riversoft.
{{< /callout >}}

## Extra

Tabelas dos Parâmetros do arquivo de configuração
### JSON STCP Gemini Server

Parâmetros do arquivo stcpserver.config.json

**STCPCore**

| Parâmetros | Descrição |
| --- | ----------- |
| ApplName | Nome da Instância a ser executada na aplicação|
| ApplDescription | Descrição da Instância |
| ApplUser | Usuário no CentOS 7 |
| ApplGroup | Grupo no CentOS 7 |
| ApplDir | Local onde será pesquisada a estrutura da aplicação |
| ApplLockDir | Controle de lock |
| ApplPidFile | Arquivo de controle com a identificação do número do processo |
| ApplUmask | Máscara de permissão para criação dos arquivos e diretórios |
| ApplDaemon | Habilita a execução da aplicação no modo daemon (sempre 0) |
| ApplMsgFileName | Caminho onde estão localizadas as mensagens |
| ApplMsgLanguage | Em qual idioma as mensagens apresentadas serão salvas |
| ApplConfigPassPhrase | Palavra criptográfica das senhas (dados sensíveis) |
| ApplDebug | Nível de debug para apuração de erros |
| ApplMaximunConsoleMsgs | Número máximo de mensagens na console da aplicação |
| ApplMaximunAsyncProcesses | Número máximo de processos que podem ser executados |

**STCPCfg**

| Parâmetros      | Descrição |
| ----------- | ----------- |
| DLLName | Nome da biblioteca que está sendo utilizada |
| DBName  | Nome da tabela do banco de dados  |
| DBHost  | Endereço do servidor, onde está o banco de dados  |
| DBPort  | Porta do servidor, onde está o banco de dados  |
| DBUser  | Usuário do banco de dados  |
| DBPswd  | Senha do banco de dados  |
| MaxConfigTxt | Quantidade de bytes do campo de configuração  |
| MaxExtraTxt  | Quantidade de bytes do campo extra  |
