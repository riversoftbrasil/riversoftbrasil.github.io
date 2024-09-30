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
next: /stcpdirectlink/02-configuration/requirements
draft: false
lastmod: 2024-07-12
---
# Configuração

As configurações de inicialização da aplicação serão armazenadas em um arquivo texto no formato **JSON**.

A aplicação irá utilizar o arquivo de configuração ***config.json*** existente no diretório ***configs*** ou através do parâmetro: `-config \<nome do arquivo de configuração>` informado na linha de comando.

## Configuração do STCPDirectLink

A configuração do STCPDirectLink é realizada através de um arquivo no formato json (ex.: example-config.json) localizado no diretório ***configs***.

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