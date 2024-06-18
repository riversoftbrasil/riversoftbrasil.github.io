---
linkTitle: Configuração
title:
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 2
prev:
next:
slug:
draft:
lastmod:
---
Concluída a instalação, será necessário criar um arquivo de configuração seguindo os passos:
* Acesse a pasta de configurações em /usr/local/stcpgemini-api/configs
* Verifique a existência do arquivo example-config.json
* Renomeie-o ou faça uma cópia para config.json

```
$ cp example-config.json config.json
```

## Inserção de informações no arquivo de configuração

O arquivo config.json criado anteriormente conterá uma série de informações necessárias para atender o ambiente e/ou funcionalidades do STCP Gemini API. Segue abaixo um exemplo:

```json
{
 "databases": {
 "config": {
 "type_database": "mysql",
 "host": "192.168.0.1",
 "port": "3306",
 "user": "root",
 "password": "root",
 "database_name": "STCPCFG_DB",
 "max_connections": "50",
 "max_queue": "5",
 "min_pool": "0",
 "max_pool": "50",
 "pool_timeout": "30000",
 "sid": "xe"
 },

 "log": {
 "type_database": "mysql",
 "host": "192.168.0.1",
 "port": "3306",
 "user": "root",
 "password": "root",
 "database_name": "STCPLOG_DB",
 "max_connections": "50",
 "max_queue": "5",
 "min_pool": "0",
 "max_pool": "50",
 "pool_timeout": "30000",
 "sid": "xe",
 "database_auth": "admin",
 "ssl": true
  }
},

 "general": {
 "host": "",
 "port": "",
 "templates_dir": "",
 "rest_name": "",
 "database_maintenance": "",
 "limitReportsCount": ""
},

 "encryptPwd": {
 "configPassPhrase": "Stcp@Gemini"
 },

 "httpsCertificate": {
 "cert": "",
 "key": "",
 "passphrase": ""
 }
}
```
## Explicação dos parâmetros

Como é de se esperar o arquivo de configuração é único para cada aplicação, portanto é preciso preenchê-lo com informações
coerentes do seu ambiente. Para isso, serão apresentadas tabelas explicativas de quais parâmetros devem ser modificados, consulte-as e preencha o arquivo corretamente.

**Seção General**

| Parâmetros  | Descrição |
| ----------- | ----------- |
| templates_dir | Definir nome de pasta com templates personalizados. |
| rest_name Nome | configurado no menu Rest API com configurações definidas; |
| database_maintenance | Definir tempo em segundos para realizar manutenção no banco de dados (Padrão de hora em hora).|
| host | Caso o servidor tenha duas placas de rede, definir por qual o API será acessada, informando o IP.|
| port | Definir a porta que API será acessada, junto ao IP configurado na chave "host".|


**Seção encryptPwd**

| Parâmetros  | Descrição |
| ----------- | ----------- |
|configPassPhrase | Palavra criptográfica das senhas **(dados sensíveis)**|

**Seção httpsCertificate**

| Parâmetros  | Descrição |
| ----------- | ----------- |
| cert | Apontar o caminho de onde está localizado o certificado. Ex.: ./configs/certs/stcp_riversoft.cer |
| key | Apontar o caminho de onde está localizado a chave do certificado. Ex.: ./configs/keys/stcp_riversoft.key. |
| passphrase | Caso o certificado tenha senha, adicionar a senha neste campo. |
