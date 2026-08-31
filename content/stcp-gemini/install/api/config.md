---
title: "Configuração"
weight: 20
toc: true
layout: docs
---
## Criação do arquivo de configuração
 
Concluída a instalação, siga os passos abaixo para criar o arquivo de configuração da aplicação:
 
- Acesse a pasta de configurações em `/usr/local/stcpgemini-api/configs`;
- Verifique a existência do arquivo `example-config.json`;
- Renomeie-o ou faça uma cópia para `config.json`.
```shell
cd /usr/local/stcpgemini-api/configs
```
```shell
cp example-config.json config.json
```
O arquivo `config.json` contém as informações necessárias para atender o ambiente e as funcionalidades do STCP Gemini API. 

Segue abaixo um exemplo:
 
```json
{
        "databases": {
                "config": {
                        "type_database": "mssql",
                        "host": "192.168.0.10",
                        "port": 1433,
                        "user": "root",
                        "password": "root",
                        "database_name": "GEMINI_DBConfig"
                },
                "log":
                        "type_database": "mssql",
                        "host": "192.168.0.10",
                        "port": 1433,
                        "user": "root",
                        "password": "root",
                        "database_name": "GEMINI_DBLog"
                }
        },
        "general": {
                "ssl": true,
                "host": "0.0.0.0",
                "port": 33070,
                "cert": "/usr/local/stcp/keystore/certs/stcpweb_local.cer",
                "key": "/usr/local/stcp/keystore/keys/stcpweb_local.key",
                "key_password": "",
                "api_secret": "Stcp@Gemini",
                "templates_dir": "",
                "rest_name": "RestAPI",
                "database_maintenance": 0,
                "auth_type": "native"
        }
}
```
Como o arquivo de configuração é único para cada aplicação, é preciso preenchê-lo com informações coerentes com o ambiente. As tabelas abaixo descrevem os principais parâmetros a serem revisados.

## Parâmetros do arquivo de configuração

Parâmetros disponíveis no arquivo `config.json`.

### databases
 
| Parâmetro | Descrição |
| :--- | :--- |
| `type_database` | Tipo de banco de dados utilizado (ex.: `mysql`). |
| `host` | Endereço do servidor onde está o banco de dados. |
| `port` | Porta de acesso ao banco de dados. |
| `user` | Usuário de acesso ao banco de dados. |
| `password` | Senha de acesso ao banco de dados. |
| `database_name` | Nome da base de dados. |
 
### general
 
| Parâmetro | Descrição |
| :--- | :--- |
| `ssl` | Habilita comunicação HTTPS/TLS na API. Quando `true`, exige `cert` e `key` válidos. |
| `host` | Interface de rede em que a API ficará escutando. Use `0.0.0.0` para escutar em todas as interfaces, ou um IP específico caso o servidor possua mais de uma placa de rede. |
| `port` | Porta em que a API será exposta. |
| `cert` | Caminho do arquivo de certificado utilizado quando `ssl` está habilitado. |
| `key` | Caminho do arquivo de chave privada correspondente ao certificado. |
| `key_password` | Senha da chave privada (`key`), quando aplicável. Deixe em branco se a chave não possuir senha. |
| `api_secret` | Chave secreta utilizada pela API para assinatura/validação de tokens de autenticação e criptografia de senhas **(dado sensível)**. |
| `templates_dir` | Nome da pasta com templates personalizados. |
| `rest_name` | Nome da instância REST exibido no menu de configurações. |
| `database_maintenance` | Intervalo, em segundos, entre execuções da rotina de manutenção do banco de dados. Use `0` para desabilitar. |
| `auth_type` | Mecanismo de autenticação utilizado pela API. Valor válido: `native` (autenticação nativa do STCP). |