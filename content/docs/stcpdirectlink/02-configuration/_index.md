---
linkTitle: Configuração
layout: docs
sidebar:
  exclude: false
weight: 2
prev: /dirl/install/structure
next: /dirl/configuration/requirements
---
# Configuração
As configurações de inicialização da aplicação serão armazenadas em um arquivo texto no formato JSON.

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
    "smsSender":"",

    "routeEnable": false,
    "routeTableCSVFile":"./configs/test/list_table.csv",
    "routeCSVDelimiter":";",
    "routeScanTimerMs": 15000,
    "routeScanSplitFilenameRegex":"(?i)^.*\/(?P<origin>.*?)\/(?P<filename>.*)$",
    "routeScanSplitFilenameRegex_Example1":"(?i)^.*\/(?P<origin>.*?)_(?P<filename>.*)$",
    "routeScanSplitFilenameRegex_Example2":"(?i)^.*\/(?P<origin>.*?)\/saida\/(?P<filename>.*)$",
    "routeExternalCmdEnable":false,
    "routeExternalCmd":"C:/STCPODT/Program/stcpren_3_2.exe",
    "routeExternalCmdParams":"-rules C:/STCPODT/Program/STCPREN/stcpren-rx-dmz.ini -var0 <origin> <filefullname>",
    "routePath": ["./download/route","./download/luiz","./download/fred","./download/vanderlei"],
    "routeCopyFileEnable": true,
    "routeCopyPath": "./download/<destination>/saida/<filename>",
    "routeDirectLinkEnable":true,
    "routeDirectLinkTableIndex":"destination",
    "routeMoveFileEnable": true,
    "routeMovePath": "./download/<origin>/saida/backup/<filename>.<unixtime>",
    "routeRemoveFile": false,

    "urlShortnerEnable": false,
    "urlShortnerProvider": "bitly",
    "urlShortnerEndpoint":"https://api-ssl.bitly.com/v4/shorten",
    "urlShortnerToken":"",

    "cfgProvider_Example_StcpWindows": "stcpwindows",
    "cfgEndpoint_Example_StcpWindows":"./configs/test/CTCP.INI",
    "cfgInstanceName_Example_Windows": "AWSContainerDev",

    "cfgProvider_Example_StcpGeminiDB": "stcpgeminidb",
    "cfgEndpoint_Example_StcpGeminiDB":"dbSTCPGeminiCfg",
    "cfgHost_Example_StcpGeminiDB":"localhost",
    "cfgPort_Example_StcpGeminiDB":3306,
    "cfgUser_Example_StcpGeminiDB":"",
    "cfgPswd_Example_StcpGeminiDB":"",
    "cfgInstanceName_Example_StcpGeminiDB": "AWSContainerDev",
    "cfgMethod_Example_StcpGeminiDB": "mysql",

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
        "ssoName": "River CIAM",
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

    "networks": [ "TCPIP_1", "TCPIP_2"],

    "applConfigPassPhrase":"Stcp@Gemini",
    "appSecret":"STCPDirectLink2021",
    "maxLenPin":6,
    "PinExpireSeconds": 300,
    "maxReportLines":100,
    "debug": 0
  },
  "Service": {
    "serviceName": "STCPDirectLinkSrv_1",
    "serviceDescription": "Provide a DirectLink download server interface",
    "serviceDisplayedName": "Riversoft STCP DirectLink Server 1"
  }
}
```
