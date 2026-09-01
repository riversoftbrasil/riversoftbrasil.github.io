---
title: "Configuração"
weight: 20
toc: true
layout: docs
next: /stcp-gemini/install/rename/execute/
prev: /stcp-gemini/install/rename/install/
---
## Criação do arquivo de configuração

Concluída a instalação, siga os passos abaixo para criar o arquivo de configuração da aplicação:

- Acesse a pasta de configurações em `/usr/local/stcpren/configs`;
- Verifique a existência do arquivo `example-config-db.json`;
- Renomeie-o ou faça uma cópia para `config.json`.

```shell
cd /usr/local/stcpren/configs
```

```shell
cp example-config-db.json config.json
```

O arquivo `config.json` contém as informações necessárias para que o STCP Gemini Rename se conecte à plataforma STCP Gemini e obtenha os Roteamentos e Regras configurados.

Segue abaixo um exemplo:

```json
{
    "General": {
        "applDir": "/usr/local/stcpren",
        "applLockDir": "/usr/local/stcpren/control",
        "applPidFile": "",
        "applConfigPassPhrase": "Stcp@Gemini",
        "applUser": "stcp",
        "applGroup": "stcp",
        "applDebug": 0,
        "License": ""
    },
    "cfgProvider": {
        "cfgProviderType": "stcpgeminidb",
        "cfgInstanceName": "INSTANCIATESTE",
        "cfgDbName": "GEMINI_DBConfig",
        "cfgDbHost": "192.168.0.10",
        "cfgDbPort": 3306,
        "cfgDbUser": "root",
        "cfgDbPswd": "root",
        "cfgDbType": "mysql"
    },
    "lockProvider": {
        "lockEnable": true,
        "lockType": "filesystem"
    },
    "kmsProvider": {
        "kmsEnable": false,
        "kmsType": "aws:secretmanager",
        "kmsName": "AWS Secret provider",
        "kmsEndpoint": "",
        "kmsTenant": "",
        "kmsRegion": "us-east-2",
        "kmsClientId": "",
        "kmsClientSecret": "",
        "KmsClientAccessToken": "",
        "kmsClientFingerprint": "",
        "kmsClientPrivateKey": "",
        "kmsClientPrivateKeyPswd": "",
        "kmsVaultId": ""
    }
}
```

Como o arquivo de configuração é único para cada aplicação, é preciso preenchê-lo com informações coerentes com o ambiente. As tabelas abaixo descrevem os principais parâmetros a serem revisados.

## Parâmetros do arquivo de configuração

Parâmetros disponíveis no arquivo `config.json`.

### General

| Parâmetro | Descrição |
| :--- | :--- |
| `applDir` | Diretório de instalação da aplicação. |
| `applLockDir` | Diretório de controle de lock. |
| `applPidFile` | Caminho do arquivo de PID, quando aplicável. |
| `applConfigPassPhrase` | Palavra criptográfica das senhas **(dado sensível)**. |
| `applUser` | Usuário do sistema operacional utilizado pela aplicação. |
| `applGroup` | Grupo do sistema operacional utilizado pela aplicação. |
| `applDebug` | Nível/máscara de debug utilizado para apuração de erros. |
| `License` | Chave de licença do STCP Gemini Rename. |

### cfgProvider

| Parâmetro | Descrição |
| :--- | :--- |
| `cfgProviderType` | Tipo de provedor de configuração utilizado. Valor `stcpgeminidb` integra o Rename diretamente ao banco de dados da plataforma STCP Gemini, de onde são obtidos os Roteamentos e Regras configurados através do Portal. |
| `cfgInstanceName` | Nome da instância STCP Gemini associada, correspondente ao `ApplName` configurado no STCP Gemini Server. |
| `cfgDbName` | Nome do banco de dados de configuração. |
| `cfgDbHost` | Endereço do servidor onde está o banco de dados. |
| `cfgDbPort` | Porta de acesso ao banco de dados. |
| `cfgDbUser` | Usuário de acesso ao banco de dados. |
| `cfgDbPswd` | Senha de acesso ao banco de dados. |
| `cfgDbType` | Tipo do banco de dados utilizado (ex.: `mysql`). |

{{< callout type="info" >}} 
Os Roteamentos e Regras utilizados pelo STCP Gemini Rename são criados e mantidos através do STCP Gemini Portal. A configuração detalhada desses itens está fora do escopo deste guia de instalação.
{{< /callout >}} 

### lockProvider

| Parâmetro | Descrição |
| :--- | :--- |
| `lockEnable` | Habilita o controle de lock durante a execução, evitando execuções concorrentes sobre os mesmos arquivos/diretórios. |
| `lockType` | Define o tipo de lock utilizado. Com `in-memory`, o lock é mantido em memória durante a execução. Com `filesystem`, o lock é registrado em arquivo no diretório definido pelo parâmetro `applLockDir`. |

### kmsProvider

Seção opcional, utilizada quando informações sensíveis da configuração são obtidas a partir de um provedor externo de gerenciamento de chaves e segredos (KMS).

| Parâmetro | Descrição |
| :--- | :--- |
| `kmsEnable` | Habilita a integração com um provedor externo de KMS. Quando `false`, os demais parâmetros desta seção são ignorados. |
| `kmsType` | Tipo de provedor de KMS utilizado (ex.: `aws:secretmanager`). |
| `kmsName` | Nome de identificação do provedor configurado. |
| `kmsEndpoint` | Endpoint do provedor de KMS, quando aplicável. |
| `kmsTenant` | Identificador do tenant/organização no provedor de KMS, quando aplicável. |
| `kmsRegion` | Região do provedor de KMS utilizada (ex.: `us-east-2`). |
| `kmsClientId` / `kmsClientSecret` | Credenciais de autenticação junto ao provedor de KMS. |
| `KmsClientAccessToken` | Token de acesso utilizado na autenticação, quando aplicável. |
| `kmsClientFingerprint` | Fingerprint utilizado na validação da chave/certificado do cliente, quando aplicável. |
| `kmsClientPrivateKey` / `kmsClientPrivateKeyPswd` | Chave privada e respectiva senha utilizadas na autenticação, quando aplicável. |
| `kmsVaultId` | Identificador do cofre (*vault*) utilizado no provedor de KMS, quando aplicável. |

{{< callout type="important" >}} 
Os parâmetros `cfgDbPswd`, `applConfigPassPhrase`, `License` e as credenciais de `kmsProvider` são dados sensíveis. Mantenha o arquivo `config.json` protegido, restringindo o acesso ao usuário/grupo definidos em `applUser`/`applGroup`.
{{< /callout >}} 

## Próxima etapa

Após concluir a configuração, prossiga para **[Modos de execução do STCP Gemini Rename](/stcp-gemini/install/rename/execute/)**.