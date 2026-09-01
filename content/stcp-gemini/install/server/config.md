---
title: "Configuração"
weight: 20
toc: true
layout: docs
next: /stcp-gemini/install/server/execute/
prev: /stcp-gemini/install/server/install/
---
## Criação do arquivo de configuração
 
Concluída a instalação, siga os passos abaixo:
 
- Acesse a pasta de configurações em `/usr/local/stcp/configs`;
- Verifique a existência do arquivo `example-stcpserver.config.json`;
- Renomeie-o ou faça uma cópia para `stcpserver.config.json`.
```shell
cd /usr/local/stcp/configs
```
```shell
cp example-stcpserver.config.json stcpserver.config.json
```
## Definição da instância (ApplName)
 
Para que o STCP Gemini Server execute a instância criada no STCP Gemini Portal, é necessário informar o nome dessa instância no campo `ApplName` do arquivo de configuração.

O parâmetro `ApplName` identifica a instância do STCP Gemini Server que será utilizada no ambiente.
 
```shell
vi stcpserver.config.json
```
{{< callout type="info" >}}
O valor configurado em `ApplName` deve ser mantido consistente entre o STCP Gemini Server e a instância cadastrada no STCP Gemini Portal.
{{< /callout >}}
 
```json
{
    "Module": "stcpgemini-server",
    "Version": "1.0",
    "Description": "Configuration parameters STCP Gemini OFTP Server Linux",
    "Modules": {
        "STCPCore": {
            "ApplName": "INSTANCIATESTE",
            "ApplDescription": "",
            "ApplUser": "stcp",
            "ApplGroup": "stcp",
            "ApplDir": "/usr/local/stcp/",
            "ApplLockDir": "/usr/local/stcp/control",
            "ApplPidFile": "/var/run/stcpserver.pid",
            "ApplUmask": "0022",
            "ApplDaemon": "0",
            "ApplMsgFileName": "/usr/local/stcp/configs/stcplang.json",
            "ApplMsgLanguage": "ptb",
            "ApplConfigPassPhrase": "Stcp@Gemini",
            "ApplDebug": "0",
            "ApplMaximunConsoleMsgs": "100",
            "ApplMaximunAsyncProcesses": "2048"
        },
        "STCPCfg": {
            "DLLName": "libstcpcfgmysql.so",
            "DBName": "GEMINI_DBConfig",
            "DBHost": "192.168.0.10",
            "DBPort": "3306",
            "DBUser": "root",
            "DBPswd": "root",
            "MaxConfigTxt": "8192",
            "MaxExtraTxt": "8192"
        }
    }
}
```
{{< callout type="important" >}} 
Para iniciar o serviço do STCP Gemini Server é necessário ter uma instância previamente configurada através do STCP Gemini Portal.
{{< /callout >}} 
 
## Parâmetros do arquivo de configuração
 
Parâmetros disponíveis no arquivo `stcpserver.config.json`.
 
### STCPCore
 
| Parâmetro | Descrição |
| :--- | :--- |
| `ApplName` | Nome da instância a ser executada pela aplicação. |
| `ApplDescription` | Descrição da instância. |
| `ApplUser` | Usuário do sistema operacional utilizado pela aplicação. |
| `ApplGroup` | Grupo do sistema operacional utilizado pela aplicação. |
| `ApplDir` | Diretório onde está localizada a estrutura da aplicação. |
| `ApplLockDir` | Diretório de controle de lock. |
| `ApplPidFile` | Arquivo de controle com a identificação do número do processo (PID). |
| `ApplUmask` | Máscara de permissão para criação de arquivos e diretórios. |
| `ApplDaemon` | Habilita a execução da aplicação em modo daemon **(sempre "0")**. |
| `ApplMsgFileName` | Caminho do arquivo onde estão localizadas as mensagens da aplicação. |
| `ApplMsgLanguage` | Idioma utilizado para as mensagens apresentadas. |
| `ApplConfigPassPhrase` | Palavra criptográfica das senhas **(dado sensível)**. |
| `ApplDebug` | Nível de debug utilizado para apuração de erros. |
| `ApplMaximunConsoleMsgs` | Número máximo de mensagens exibidas no console da aplicação. |
| `ApplMaximunAsyncProcesses` | Número máximo de processos que podem ser executados simultaneamente. |
 
### STCPCfg
 
| Parâmetro | Descrição |
| :--- | :--- |
| `DLLName` | Nome da biblioteca utilizada para acesso à configuração. |
| `DBName` | Nome do banco de dados de configuração. |
| `DBHost` | Endereço do servidor onde está o banco de dados. |
| `DBPort` | Porta de acesso ao banco de dados. |
| `DBUser` | Usuário de acesso ao banco de dados. |
| `DBPswd` | Senha de acesso ao banco de dados. |
| `MaxConfigTxt` | Quantidade máxima de bytes do campo de configuração. |
| `MaxExtraTxt` | Quantidade máxima de bytes do campo extra. |
