---
linkTitle: Configuração
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 2
prev: /stcpdirectlink/01-install/
next: /stcpdirectlink/03-run
draft: false
slug: configuracao
lastmod: 2024-10-01
---
# Configuração

As configurações de inicialização da aplicação serão armazenadas em um arquivo texto no formato **JSON**.

A aplicação irá utilizar o arquivo de configuração ***config.json*** existente no diretório ***configs*** ou através do parâmetro: `-config \<nome do arquivo de configuração>` informado na linha de comando.

## Requisitos

- Editor de texto (Ex: [VSCode](https://code.visualstudio.com/), [Notepad++](https://notepad-plus-plus.org/downloads/));
- Informações do relay de email;
- Informações da interface de rede;
- Informações do banco de dados.

## Arquivo JSON

A configuração do STCP DirectLink é realizada através de um arquivo no formato json (ex.: example-config.json) localizado no diretório ***configs***.

Copie o arquivo de exemplo **example-config.json** para **config.json** e ajustes os parâmetros de acordo com sua necessidade.

``` json
{
  "General": {
    "downloadEnable": true,
    "downloadExpireDays": 1,
    "downloadPinExpireSeconds": 120,

    "uploadEnable": true,
    "uploadMaxFileSize": 1073741824,
    "uploadValidateJSON": true,

    "emailEnable": true,
    "emailServerAddress": "smtp.office365.com",
    "emailServerPort": 587,
    "emailAuthUser": "",
    "emailAuthPswd": "",
    "emailAuthType": "login",
    "emailTemplatesPath":"./templates/riversoft/email",
    "emailSendFrom": "example@contoso.com.br",
    "emailReplyTo": "example@contoso.com.br",
    "emailFormatMimeFrom": "From: <user> via STCPDirectLink <<emailfrom>>",
    "emailSendConfirmationEnable": true,
    "emailSendConfirmationToSenderEnable": false,
    "emailSendRetryMaximum": 5,
    "emailSendRetryWaitSeconds": 5,
    "emailCheckValidMXDisable": false,

    "smsEnable": false,
    "smsProvider": "twilio",
    "smsEndpoint": "https://api.twilio.com/2010-04-01",
    "smsAuthUser": "",
    "smsAuthPswd": "",
    "smsSender":"",
    "smsTemplatesPath":"./templates/riversoft/sms",
    "smsSendConfirmationEnable": true,

    "routeEnable": false,
    "routeTableCSVFile":"./configs/test/list_table.csv",
    "routeCSVDelimiter":";",
    "routeScanTimerMs": 15000,
    "routeScanSplitFilenameRegex":"(?i)^.*\/(?P<origin>.*?)\/(?P<filename>.*)$",
    "routeScanSplitFilenameRegex_Example1":"(?i)^.*\/(?P<origin>.*?)_(?P<filename>.*)$",
    "routeScanSplitFilenameRegex_Example2":"(?i)^.*\/(?P<origin>.*?)\/saida\/(?P<filename>.*)$",
    "routeExternalCmdEnable":false,
    "routeExternalCmd":"",
    "routeExternalCmdParams":"",
    "routePath": [],
    "routeCopyFileEnable": true,
    "routeCopyPath": "",
    "routeMoveFileEnable": true,
    "routeMovePath": "",
    "routeRemoveFile": false,
    "routeDirectLinkEnable":true,
    "routeDirectLinkTableIndex":"destination",
    "routeDirectLinkUrl": "http://your-domain/directlink/v1",

    "urlShortnerEnable": false,
    "urlShortnerProvider": "bitly",
    "urlShortnerEndpoint":"https://api-ssl.bitly.com/v4/shorten",
    "urlShortnerToken":"",

    "cfgProvider_Example_StcpWindows": "stcpwindows",
    "cfgDbName_Example_StcpWindows":"./configs/test/CTCP.INI",
    "cfgInstanceName_Example_Windows": "instance-name",

    "cfgProvider_Example_StcpGeminiDB": "your-provider",
    "cfgDbName_Example_StcpGeminiDB":"your-dbname",
    "cfgDbHost_Example_StcpGeminiDB":"localhost",
    "cfgDbPort_Example_StcpGeminiDB":3306,
    "cfgDbUser_Example_StcpGeminiDB":"",
    "cfgDbPswd_Example_StcpGeminiDB":"",
    "cfgDbType": "mysql",
    "cfgDbOptions": "?charset=latin1",
    "cfgInstanceName_Example_StcpGeminiDB": "instance-name",


    "logDbEnable": false,
    "logDbType": "mysql",
    "logDbHost": "",
    "logDbPort": 3306,
    "logDbUser": "",
    "logDbPwd": "",
    "logDbName": "",
    "logDbWindows": false,

    "oauthTokenMethodJWT": "HS256",
    "oauthTokenExpireSeconds": 3600,

    "ssoProviders":[{ 
        "ssoType": "oauth2",
        "ssoName":"google",
        "ssoEnable":false,
        "ssoClientId":"",
        "ssoClientSecret":"",
        "ssoRedirectUrlOrEndpoint":"",
        "ssoPrivateKeyFile":"",
        "ssoTenantOrTeamId":"",
        "ssoScope": "https://www.googleapis.com/auth/userinfo.email,profile",
        "ssoLogoutUrl":"https://www.google.com/accounts/Logout",
        "ssoCertsUrl": "https://www.googleapis.com/oauth2/v3/certs",
        "ssoAuthUrl": "https://accounts.google.com/o/oauth2/auth",
        "ssoTokenUrl": "https://oauth2.googleapis.com/token"
      },
      {
        "ssoType": "oauth2",
        "ssoName":"microsoft",
        "ssoEnable": false,
        "ssoClientId":"",
        "ssoClientSecret":"",
        "ssoRedirectUrlOrEndpoint":"",
        "ssoPrivateKeyFile":"",
        "ssoTenantOrTeamId":"",
        "ssoScope": "https://graph.microsoft.com/mail.read,openid,profile,email,offline_access",
        "ssoLogoutUrl":"https://login.microsoftonline.com/common/oauth2/v2.0/logout?post_logout_redirect_uri=",
        "ssoCertsUrl": "https://login.microsoftonline.com/common/discovery/v2.0/keys",
        "ssoAuthUrl": "https://login.microsoftonline.com/common/oauth2/v2.0/authorize",
        "ssoTokenUrl":"https://login.microsoftonline.com/common/oauth2/v2.0/token"
      },
      {
        "ssoType": "oauth2",
        "ssoName":"apple",
        "ssoEnable": false,
        "ssoClientId":"",
        "ssoClientSecret":"",
        "ssoRedirectUrlOrEndpoint":"",
        "ssoPrivateKeyId":"",
        "ssoPrivateKeyFile":"",
        "ssoTenantOrTeamId":"",
        "ssoScope":"name,email",
        "ssoLogoutUrl":"",
        "ssoCertsUrl": "https://appleid.apple.com/auth/keys",
        "ssoAuthUrl": "https://appleid.apple.com/auth/authorize",
        "ssoTokenUrl":"https://appleid.apple.com/auth/token"
      },
      {
        "ssoType": "ldap",
        "ssoName": "your-sso-name",
        "ssoEnable": false,
        "ssoClientId":"cn=admin,dc=example,dc=org",
        "ssoClientSecret":"",
        "ssoRedirectUrlOrEndpoint":"ldap://localhost:1389",
        "ssoPrivateKeyId":"",
        "ssoPrivateKeyFile":"",
        "ssoTenantOrTeamId":"dc=example,dc=org",
        "ssoScope":"(CN=%s)",
        "ssoScope_Example_LDAP_Filter_AD_sAMAccountName": "(&(objectClass=user)(sAMAccountName=%s))",
        "ssoScope_Example_LDAP_Filter_AD_sAMAccountName_With_Group": "(&(objectClass=user)(sAMAccountName=%s)(memberOf=cn=stcp,ou=groups,ou=desenv,dc=intranet,dc=riversoft,dc=com,dc=br))",
        "ssoScope_Example_LDAP_Filter_AD_AD_CN_With_Group": "(&(CN=%s)(memberOf=cn=stcp,ou=groups,ou=desenv,dc=intranet,dc=riversoft,dc=com,dc=br))",
        "ssoScope_Example_LDAP_Filter_AD_userPrincipalName_With_Group": "(&(objectClass=user)(userPrincipalName=%s)(memberOf=cn=stcp,ou=groups,ou=desenv,dc=intranet,dc=riversoft,dc=com,dc=br))",
        "ssoScope_Example_LDAP_Filter_CN": "(CN=%s)",
        "ssoScope_Example_LDAP_Filter_Without": ""
      },
      {
        "ssoType": "jwt",
        "ssoName": "jwtteste",
        "ssoEnable": false,
        "ssoScope":"upload,download",
        "ssoCertsUrl": "file:///./configs/test/certs.jwks"
      }
    ],

    "lockProvider":{
      "lockType":"filesystem"
    },

    "kmsProvider":{
      "kmsEnable":false,
      "kmsType":"oci:keyvault",
      "kmsName":"OCI Secret provider",
      "kmsEndpoint":"",
      "kmsTenant":"",
      "kmsRegion":"",
      "kmsClientId":"",
      "kmsClientFingerprint":"",
      "kmsClientPrivateKey":"",
      "kmsClientPrivateKeyPswd":"",
      "kmsVaultId":""
    },

    "license": "./license/your-license.jwt",
    "applDir":"",
    "applLockDir":"",
    "applPidFile":"",
    "applConfigPassPhrase":"",
    "applUser": "your-user",
    "applGroup": "your-group",
    "applSecret":"",
    "applDebug": 129,
    "maxLenPin":6,
    "maxReportLines":100,
    "pinExpireSeconds": 180
  },
  "Service": {
    "serviceName": "STCPDirectLinkSrv_1",
    "serviceDescription": "Provide a DirectLink download server interface",
    "serviceDisplayedName": "Riversoft STCP DirectLink Server 1"
  }
}
``` 

Abaixo, temos as tabelas com as respectivas explicações de cada parâmetro: 

### Parâmetros de download

 Parâmetros                            | Descrição
 ---                                   | ----
 downloadEnable                        | Habilita o serviço de download
 downloadPinExpireSeconds              | Tempo de expiração da chave de segurança (PIN) em segundos
 downloadExpireDays                    | Quantidade de dias valido do link de email

### Parâmetros de upload

 Parâmetros                            | Descrição
 ---                                   | ----
 uploadEnable                          | Habilita o serviço de upload
 uploadMaxFileSize                     | Tamanho máximo do arquivo
 uploadValidateJSON                    | Habilita validação estrutural e se o arquivo é do tipo JSON

### Parâmetros de email

 Parâmetros                            | Descrição
 ---------                             | -------------
 emailEnable                           | Habilita o serviço de envio do email
 emailServerAddress                    | Endereço ip ou nome do servidor de email
 emailServerPort                       | Porta do serviço de email
 emailAuthUser                         | Usuário para autenticação no serviço de email
 emailAuthPswd                         | Senha para autenticação no serviço de email
 emailFormatMimeFrom                   | Formata o campo From do email no padrão mime
 emailAuthType                         | Tipo de autenticação do serviço de email (ex.: plain - login)
 emailTemplatesPath                    | Diretório de templates de emails e assuntos
 emailSendFrom                         | Endereço de email que gera a notificação
 emailReplyTo                          | Endereço de email para retorno de resposta da notificação
 emailFormatMimeFrom                   | String de formatação MIME do campo **From:** (ex: From: `<emailfrom>` -- From: `<user>` via STCPDirectLink `<emailfrom>`)
 emailSendConfirmationEnable           | Habilita o envio da notificação de confirmação do download (ex: true ou false)
 emailSendConfirmationToSenderEnable   | Habilita o envio da notificação de confirmação do download para quem enviou o arquivo (ex: true ou false)
 emailSendRetryMaximum                 | Quantidade máximo de tentativas de envio do email
 emailSendRetryWaitSeconds             | Tempo de espera para uma nova tentativa de envio do email
 emailCheckValidMXDisable              | Habilita/Desabilita a validação do dominio de email no registro MX do servidor de DNS

### Parâmetros de SMS

 Parâmetros                            | Descrição
 ---------                             | -------------
 smsEnable                             | Habilita o serviço de envio do SMS
 smsProvider                           | Tipo de broker SMS (esafer, zenvia e twilio)
 smsEndpoint                           | Endpoint do serviço de broker de SMS
 smsAuthUser                           | Usuário para autenticação no serviço de SMS
 smsAuthPswd                           | Senha para autenticação no serviço de SMS
 smsSender                             | Número ou identificação do emissor de SMS (fornecido pelo broker)
 smsTemplatesPath                      | Diretório de templates das mensagens de SMS
 smsSendConfirmationEnable             | Habilita o envio da notificação de confirmação do download (ex: true ou false)

### Parâmetros de roteamento

 Parâmetros                            | Descrição
 ---------                             | -------------
 routeEnable                           | Habilita o processo de roteamento para movimentação dos arquivos ou DirectLink (ex: true ou false)
 routeTableCSVFile                     | Nome do arquivo CSV da tabela de distribuição/roteamento dos arquivos
 routeCSVDelimiter                     | Caracter delimitador do arquivo CSV
 routeExternalCmdEnable                | Habilita a execução de comando externo para processamento do arquivo (ex: true ou false)
 routeExternalCmd                      | Comando externo
 routeExternalCmdParams                | Parâmetros para execução do comando externo
 routePath                             | Array contendo o(s) caminho(s) do(s) diretório(s) para roteamento (ex: ["dir1","dir2"])
 routeCopyFileEnable                   | Habilita a copia do arquivo processado (ex: true ou false)
 routeCopyPath                         | Caminho do diretório de copia
 routeDirectLinkEnable                 | Habilita o DirectLink (envio de email de notificação para download) (ex: true ou false)
 routeDirectLinkTableIndex             | Campo da tabela de distribuição que será utilizado no DirectLink como caixa postal (ex: origin ou destination)
 routeDirectLinkUrl                    | Url do directlink que deve ser utilizada na mensagem do SecureEmail (link do email seguro)
 routeMoveFileEnable                   | Habilita o move do arquivo processado (ex: true ou false)
 routeMovePath                         | Caminho do diretório de move
 routeRemoveFile                       | Remove o arquivo processado (ex: true ou false)
 routeScanTimerMs                      | Tempo de varredura do diretório de roteamneto em milisegundos
 routeScanSplitFilenameRegex           | Expressão regular para validação e separação da campos do nome do arquivo

### Parâmetros do serviço de encurtamento de URL

 Parâmetros                            | Descrição
 ---------                             | -------------
 urlShortnerEnable                     | Habilita o serviço de encurtamento de URL para envio de SMS
 urlShortnerProvider                   | Tipo de provedor (bitly)
 urlShortnerEndpoint                   | Endpoint do serviço de broker
 urlShortnerToken                      | Token de autenticação do serviço

### Parâmetros do serviço de configuração

 Parâmetros                            | Descrição
 ---------                             | -------------
 cfgProvider                           | Tipo de provedor (stcpwindows, stcpgeminidb ou ldap)
 cfgDbName                             | Nome do serviço (obs.: **stcpgeminidb** - nome do banco de dados)
 cfgHost                               | Endereço ou nome do servidor de banco de dados
 cfgPort                               | Porta do servidor de banco de dados
 cfgUser                               | Usuário de autenticação do serviço
 cfgPswd                               | Senha de autenticação do serviço
 cfgInstanceName                       | Nome da instância utilizada

### Parâmetros de log

 Parâmetros                            | Descrição
 ---------                             | -------------
 logDbEnable                           | Habilita o o registro de log em banco de dados (ex: true ou false)
 logDbType                             | Tipo de banco de dados (ex.: mysql ou mssql)
 logDbHost                             | Endereço ou nome do servidor de BD
 logDbPort                             | Porta do servidor de BD
 logDbUser                             | Usuário para autenticação do BD
 logDbPwd                              | Senha para autenticação do BD
 logDbName                             | Nome do banco de dados
 logDbWindows                          | Tabelas do STCP Windows (ex: true ou false)

### Parâmetros de autenticação OAUTH2

 Parâmetros                            | Descrição
 ---------                             | -------------
 oauthTokenMethodJWT                   | Método de assinatura do JWT (ex.: HS256)
 oauthTokenExpireSeconds               | Tempo de expiração do token JWT (ex.: 3600)

### Parâmetros de login SSO

 Parâmetros                            | Descrição
 ---------                             | -------------
 ssoProviders                          | Conjunto de provedores de SSO
 ssoType                               | Tipo do provedor de autenticação (ex: oauth2, ldap e jwt)
 ssoName                               | Nome do provedor de autenticação para oauth2 deve ser usado: google | microsoft | apple
 ssoEnable                             | Habilita/desabilita o provedor de SSO
 ssoClientId                           | Client id de autenticação
 ssoClientSecret                       | Client secret de autenticação
 ssoRedirectUrlOrEndpoint              | Url de redirecionamento ou Endpoint de autenticação LDAP
 ssoPrivateKeyFile                     | Arquivo que contem a chave privativa de assinatura do JWT (* especifico para SSO Apple)
 ssoTenantOrTeamId                     | Nome do Tenant (Microsoft) ou do Team Id (Apple) do provedor SSO
 ssoScope                              | Filtro para localização de usuário no LDAP

### Parâmetros do provedor de lock 

Parâmetros                            | Descrição
---------                             | -------------
LockProvider                          | Conjunto de configuração do provedor de Lock
lockType                              | Tipo do provedor de lock ***(ex: in-memory ou filesystem)***

### Parâmetros de acesso ao KMS (Serviço de gerenciamento de segredos) 

Parâmetros                            | Descrição
---------                             | -------------
kmsProvider                           | Conjunto de configuração do provedor de KMS
kmsType                               | Tipo do provedor de autenticação ***(ex: azure:keyvault, oci:keyvault, aws:secretmanager ou gcp:secretmanager)***
kmsName                               | Nome do provedor
kmsEnable                             | Habilita/desabilita o provedor de KMS
kmsEndpoint                           | URL do serviço ***AWS Secret Manager*** ou ***OCI KMS***
kmsRegion                             | Região ***Azure Keyvault*** ou ***OCI KMS***
kmsClientId                           | Client id de autenticação
kmsClientSecret                       | Client secret de autenticação
kmsClientFingerprint                  | Client fingerprint de autenticação ***OCI KMS***
kmsClientPrivateKey                   | Chave privativa ou ***Google Secret Manager*** ou ***OCI KMS*** 
kmsClientPrivateKeyPswd               | Senha da chave privativa ***OCI KMS*** 
kmsTenant                             | Nome do Tenant para ***Azure Keyvault*** ou ***OCI KMS***
kmsVaultId                            | Identificação do key vault para ***OCI KMS***

### Parâmetros gerais

 Parâmetros                            | Descrição
 ---------                             | -------------
 applConfigPassPhrase                  | Segredo utilizado para criptografia/decriptografia das senhas no banco de dados do STCP Gemini. Veja [`Secrets`](#secrets)
 appSecret                             | Segredo utilizado para criptografia/decriptografia do link seguro. Veja [`Secrets`](#secrets)
 maxLenPin                             | Tamanho máximo da chave de segurança (PIN)
 pinExpireSeconds                      | Tempo máximo de vida da chave de segurança (PIN)
 debug                                 | Nível de mensagens de logs geradas (0=desligada 255=mais detalhada)
 networks                              | Define os serviços de rede que serão disponibilizados
 License                               | Caminho do arquivo de licença JWT
 applDir                               | Nome do diretório de instalação da aplicação (ex.: /usr/local/stcpdirectlink)
 applLockDir                           | Nome do diretório dos arquivos de lock (ex.: /usr/local/stcpdirectlink/control)
 applPidFile                           | Nome do do arquivo controle da execução da aplicação (ex.: /var/run/stcpdirectlink.pid)
 applUser                              | Usuário utilizado pela aplicação (linux)
 applGroup                             | Grupo utilizado pela aplicação (linux)
 applDebug                             | Nível de mensagens de logs geradas (0=desligada 255=mais detalhada)

### Parâmetros do serviço (windows)

 Parâmetros                            | Descrição
 ---------                             | -------------
 serviceName                           | Nome do serviço
 serviceDescription                    | Descrição do serviço que será apresentada no painel de gerenciamento
 serviceDisplayedName                  | Nome do serviço que será mostrado no painel de gerenciamento

### Comentários

#### ***Secrets***

<br>
     As informações sensiveis (segredo/senhas) poderão também ser lidas de um arquivo texto ou através de uma váriável de ambiente. Conforme a sintaxe abaixo:

 ```
       "applConfigPassPhrase":"file:[nome do arquivo]"
       "applConfigPassPhrase":"env:[nome da variável]"

       "appSecret":"file:[nome do arquivo]"
       "appSecret":"env:[nome da variável]"
```

#### ***ciphers***

<br>
     É possível especificar quais suites podem ser negociadas ou deixar o campo vazio para que todas as suites sejam selecionadas. As suites disponíveis são:

```
     TLS_RSA_WITH_3DES_EDE_CBC_SHA
     TLS_RSA_WITH_AES_128_CBC_SHA
     TLS_RSA_WITH_AES_256_CBC_SHA
     TLS_RSA_WITH_AES_128_GCM_SHA256
     TLS_RSA_WITH_AES_256_GCM_SHA384
     TLS_AES_128_GCM_SHA256
     TLS_AES_256_GCM_SHA384
     TLS_CHACHA20_POLY1305_SHA256
     TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA
     TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA
     TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA
     TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA
     TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA
     TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256
     TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384
     TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
     TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
     TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256
     TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256
```

Para especificar mais de uma suite elas devem ser separadas pelo caracter dois pontos(:).
<br>
<br>
Exemplo de cifra segura para compatibilidade PCI:
<br>

```json
{
"serverTLSCipherSuites":"TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:TLS_AES_128_GCM_SHA256:TLS_CHACHA20_POLY1305_SHA256:TLS_AES_256_GCM_SHA384:TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"
}
```

### Caminhos absolutos ou relativos

Quando a aplicação for executada como serviço (windows), os parâmetros de diretórios e templates devem ser informados com o caminho absoluto (path completo).

Suponha que o arquivo **documento.txt** esteja localizado na seguinte estrutura de diretório:

``` bash
/home/usuario/documentos/documento.txt
```

{{< callout type="info" >}}
  Um **caminho absoluto** é especificado desde o diretório raiz do sistema de arquivos. No Linux, o diretório raiz é representado por `/`.
{{< /callout >}}

Nesse exemplo, `/` é o diretório raiz do sistema de arquivos.

{{< callout type="info" >}}
 Um **caminho relativo** é especificado em relação ao diretório atual em que você está trabalhando.
{{< /callout >}}

Por exemplo, se você estiver no diretório `/home/usuario/`, o caminho relativo para o **documento.txt** será:

```bash
documentos/documento.txt
```

Outro exemplo, se você estiver em `/home/`, o caminho relativo será:

```bash
usuario/documentos/documento.txt
```

Isso se deve ao fato de que você está indicando que o arquivo **documento.txt** está dentro do diretório **usuario**, que, por sua vez, está dentro de **home**.

## AWS IAM Roles Anywhere

O **AWS IAM Roles Anywhere** permite que identidades fora da AWS acessem recursos da AWS de forma segura, usando certificados para autenticação. Esse serviço possibilita que suas aplicações rodando em ambientes on-premises ou em outras nuvens obtenham permissões temporárias da AWS, similar ao uso de funções (*roles*) no EC2 ou outros serviços da AWS.

### Principais Benefícios
- **Autenticação por Certificado**: Permite que as identidades sejam autenticadas usando certificados X.509, oferecendo segurança robusta para acessar recursos da AWS.
- **Flexibilidade de Ambiente**: Habilita o uso de políticas de IAM fora do ambiente AWS, sem a necessidade de credenciais de longo prazo, promovendo práticas seguras de gerenciamento de identidade.
- **Permissões Temporárias**: Assim como as funções IAM, o Roles Anywhere emite credenciais temporárias com permissões específicas, limitando a exposição de credenciais.

### Casos de Uso
- Acesso a recursos da AWS a partir de ambientes de data centers on-premises.
- Aplicações que rodam em containers ou em outras nuvens e precisam acessar serviços AWS com segurança.

Copie o arquivo de exemplo **example-awsrolesanywhere.json** para **awsrolesanywhere.json** e ajustes os parâmetros de acordo com sua necessidade.

```json
{
    "PrivateKeyId":      "/Users/user/Documents/stcpdirectlink/configs/your-key.pem",
    "CertificateId":     "/Users/user/Documentst/stcpdirectlink/configs/your-certificate.pem",
    "ProfileArnStr":     "arn:aws:rolesanywhere:us-east-1:070419234034:profile/2619bd77-02d1-4022-84c7-cd81c96d92e0",
    "TrustAnchorArnStr": "arn:aws:rolesanywhere:us-east-1:070419234034:trust-anchor/b22f2b85-59cc-4e93-96a6-44b49fe24398",
    "RoleArn":           "arn:aws:iam::070419234034:role/role-anywhere-stcpdirectlink",
    "SessionDuration":   3600
}
```

Confira abaixo uma tabela com a explicação dos parâmetros:

| **Parâmetro**            | **Descrição**                                                                                                                                       |
|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------|
| PrivateKeyId            | Caminho para o arquivo de chave privada local usado para autenticação. A chave privada é usada junto com o certificado para autenticar a identidade. |
| CertificateId           | Caminho para o arquivo de certificado local (.pem). O certificado contém a chave pública e é verificado pelo Trust Anchor no AWS IAM Roles Anywhere. |
| ProfileArnStr           | ARN do perfil IAM que associa os certificados às permissões temporárias no AWS. Define quais permissões a identidade autenticada terá.               |
| TrustAnchorArnStr       | ARN que identifica a entidade de confiança (Trust Anchor), que é usada pela AWS para validar o certificado do cliente.                              |
| RoleArn                | ARN da função IAM que será assumida após a autenticação. Define as permissões que serão concedidas temporariamente à identidade autenticada.          |
| SessionDuration         | Duração da sessão em segundos. Define por quanto tempo as credenciais temporárias obtidas serão válidas (neste caso, 3600 segundos ou 1 hora).      |
