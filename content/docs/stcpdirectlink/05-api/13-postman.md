---
linkTitle: Exemplos Postman
layout: docs
sidebar:
  exclude: false
weight: 13
prev: /docs/getting-started
next: /docs/guide/organize-files
slug: exemplos-postman
---

## Requisições de exemplo utilizando o Postman

Exemplos das chamadas e parâmetros da API STCP DirectLink.

Para simplificar o processo de desenvolvimento e testes de acesso a API, disponibilizamos o arquivo abaixo contendo exemplos das chamadas para o Postman.

```json
{
	"info": {
		"_postman_id": "9da2b4d6-550a-43c0-b74e-00e776d62d4a",
		"name": "STCPDirectLink",
		"description": "# Introdução\n\nO **Riversoft STCP DirectLink** é uma aplicação que integrada aos produtos STCP Gemini Server (Linux/MacOS) ou STCP Enterprise Server (Windows), oferece uma solução simples e robusta para distribuição segura de arquivos (download/upload) através do protocolo **http/https**.\n\n# Autenticação\n\nO processo de autenticação utilizado para acesso a API é o ***basic ou oauth2***, as credenciais utilizadas devem ser o nome de usuário e senha cadastrados no serviço STCP Gemini Server for Linnux ou STCP Server Enterprise for Windows.\n\n# Códigos de erros\n\nOs códigos de erros retornados pela API são:\n\n***400*** Falha de formatação da solicitação\n\n***401*** Falha de autenticação das credenciais informadas\n\n***403*** Falha de autorização de acesso ao endpoint\n\n***404*** Falha de acesso a recurso não existente\n\n***405*** Falha de método de acesso não suportado no endpoint\n\n# Limite de requisições\n\nO limite de requisições deverá ser implementado no ambiente de firewall de borda.",
		"schema": "https://schema.getpostman.com/json/collection/v2.1.0/collection.json",
		"_exporter_id": "15200171"
	},
	"item": [
		{
			"name": "login",
			"request": {
				"auth": {
					"type": "basic",
					"basic": [
						{
							"key": "username",
							"value": "{{username}}",
							"type": "string"
						},
						{
							"key": "password",
							"value": "{{password}}",
							"type": "string"
						}
					]
				},
				"method": "GET",
				"header": [
					{
						"key": "Content-type",
						"value": "application/json",
						"type": "text"
					}
				],
				"url": {
					"raw": "http://localhost:8080/directlink/v1/auth/login",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "8080",
					"path": [
						"directlink",
						"v1",
						"auth",
						"login"
					]
				},
				"description": "Esta requisição deve ser utilizada para o registro de login do usuário na aplicação"
			},
			"response": []
		},
		{
			"name": "logout",
			"request": {
				"auth": {
					"type": "basic",
					"basic": [
						{
							"key": "password",
							"value": "{{password}}",
							"type": "string"
						},
						{
							"key": "username",
							"value": "{{username}}",
							"type": "string"
						}
					]
				},
				"method": "GET",
				"header": [
					{
						"key": "Content-type",
						"value": "application/json",
						"type": "text"
					}
				],
				"url": {
					"raw": "http://localhost:8080/directlink/v1/auth/logout",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "8080",
					"path": [
						"directlink",
						"v1",
						"auth",
						"logout"
					]
				},
				"description": "Esta requisição deve ser utilizada para o registro de logout do usuário na aplicação"
			},
			"response": []
		},
		{
			"name": "First access",
			"request": {
				"auth": {
					"type": "noauth"
				},
				"method": "GET",
				"header": [
					{
						"key": "Content-type",
						"value": "application/json",
						"type": "text"
					}
				],
				"url": {
					"raw": "http://localhost:8080/directlink/v1/auth/firstaccess?u={{username}}x",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "8080",
					"path": [
						"directlink",
						"v1",
						"auth",
						"firstaccess"
					],
					"query": [
						{
							"key": "u",
							"value": "{{username}}x",
							"description": "Username configured in STCP Gemini Server or STCP Server Enterprise Windows"
						}
					]
				},
				"description": "Esta requisição deve ser realizada para obter o link de registro de senha do primeiro acesso de um usuário provisionado na plataforma.\n\nApós receber o link, uma nova requisição deverá ser realizada com o link retornado e os parâmetros definidos para a solicitação de \"Change Password with Pin\", um email de notificação contendo o pin de segurança será encaminhado para o email cadastrado para o usuário na plataforma."
			},
			"response": []
		},
		{
			"name": "Forget Password",
			"request": {
				"auth": {
					"type": "noauth"
				},
				"method": "GET",
				"header": [
					{
						"key": "Content-type",
						"value": "application/json",
						"type": "text"
					}
				],
				"url": {
					"raw": "http://localhost:8080/directlink/v1/auth/forget?u={{username}}",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "8080",
					"path": [
						"directlink",
						"v1",
						"auth",
						"forget"
					],
					"query": [
						{
							"key": "u",
							"value": "{{username}}",
							"description": "Username configured in STCP Gemini Server or STCP Server Enterprise Windows"
						}
					]
				},
				"description": "Esta requisição deve ser realizada para obter o link de registro de uma nova senha para um usuário provisionado na plataforma.\n\nApós receber o link, uma nova requisição deverá ser realizada com o link retornado e os parâmetros definidos para a solicitação de \"Change Password with Pin\", um email de notificação contendo o pin de segurança será encaminhado para o email cadastrado para o usuário na plataforma."
			},
			"response": []
		},
		{
			"name": "Change password with pin",
			"request": {
				"method": "POST",
				"header": [],
				"url": {
					"raw": "http://localhost:8080/directlink/v1/auth/change?k=&p=&z=",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "8080",
					"path": [
						"directlink",
						"v1",
						"auth",
						"change"
					],
					"query": [
						{
							"key": "k",
							"value": "",
							"description": "Access key returned from request First Access or Forget Password"
						},
						{
							"key": "p",
							"value": "",
							"description": "PIN sent to user e-mail"
						},
						{
							"key": "z",
							"value": "",
							"description": "New password"
						}
					]
				},
				"description": "Esta requisição deve ser realizada para o registro de uma nova senha para um usuário provisionado na plataforma."
			},
			"response": []
		},
		{
			"name": "Download List",
			"request": {
				"auth": {
					"type": "basic",
					"basic": [
						{
							"key": "password",
							"value": "{{password}}",
							"type": "string"
						},
						{
							"key": "username",
							"value": "{{username}}",
							"type": "string"
						}
					]
				},
				"method": "GET",
				"header": [
					{
						"key": "Content-type",
						"value": "application/json",
						"description": "Always ",
						"type": "text"
					}
				],
				"url": {
					"raw": "http://localhost:8080/directlink/v1/download/list",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "8080",
					"path": [
						"directlink",
						"v1",
						"download",
						"list"
					]
				},
				"description": "Esta requisição deverá ser utilizada para obtenção da lista de arquivos disponíveis para donwload. A lista conterá o link para download do arquivo."
			},
			"response": []
		},
		{
			"name": "Download List Backup",
			"request": {
				"auth": {
					"type": "basic",
					"basic": [
						{
							"key": "password",
							"value": "{{password}}",
							"type": "string"
						},
						{
							"key": "username",
							"value": "{{username}}",
							"type": "string"
						}
					]
				},
				"method": "GET",
				"header": [
					{
						"key": "Content-type",
						"value": "application/json",
						"description": "Always ",
						"type": "text"
					}
				],
				"url": {
					"raw": "http://localhost:8080/directlink/v1/download/list/backup",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "8080",
					"path": [
						"directlink",
						"v1",
						"download",
						"list",
						"backup"
					]
				},
				"description": "Esta requisição deverá ser utilizada para obtenção da lista de arquivos disponíveis na área de backup para donwload. A lista conterá o link para download do arquivo."
			},
			"response": []
		},
		{
			"name": "Upload multipart",
			"request": {
				"auth": {
					"type": "basic",
					"basic": [
						{
							"key": "username",
							"value": "{{username}}",
							"type": "string"
						},
						{
							"key": "password",
							"value": "{{password}}",
							"type": "string"
						}
					]
				},
				"method": "POST",
				"header": [],
				"body": {
					"mode": "formdata",
					"formdata": [
						{
							"key": "file",
							"description": "Filename to upload",
							"type": "file",
							"src": "/Users/llima/Downloads/config.json"
						},
						{
							"key": "d",
							"value": "",
							"description": "Destination username configured in STCP Gemini Server or STCP Server Enterprise Windows (optional)",
							"type": "text",
							"disabled": true
						},
						{
							"key": "m",
							"value": "",
							"description": "Destination email (optional)",
							"type": "text",
							"disabled": true
						},
						{
							"key": "c",
							"value": "5535991357116",
							"description": "Destination mobile (optional)",
							"type": "text",
							"disabled": true
						},
						{
							"key": "i",
							"value": "teste de info 2",
							"description": "Message (optional)",
							"type": "text",
							"disabled": true
						}
					]
				},
				"url": {
					"raw": "http://localhost:8080/directlink/v1/upload",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "8080",
					"path": [
						"directlink",
						"v1",
						"upload"
					]
				},
				"description": "Esta requisição deverá ser utilizada para upload de um arquivo para a plataforma, o conteúdo deverá ser formatado em multipart."
			},
			"response": []
		},
		{
			"name": "Upload JSON",
			"request": {
				"auth": {
					"type": "basic",
					"basic": [
						{
							"key": "password",
							"value": "teste",
							"type": "string"
						},
						{
							"key": "username",
							"value": "o0055cardiffat",
							"type": "string"
						}
					]
				},
				"method": "POST",
				"header": [
					{
						"key": "Content-type",
						"value": "application/json",
						"description": "Content type (mandatory)",
						"type": "text"
					},
					{
						"key": "X-STCPDIRECTLINK-DESTINATION",
						"value": "",
						"description": "Destination username configured in STCP Gemini Server or STCP Server Enterprise Windows (optional)",
						"type": "text"
					},
					{
						"key": "X-STCPDIRECTLINK-EMAIL",
						"value": "",
						"description": "Destination email (optional)",
						"type": "text"
					},
					{
						"key": "X-STCPDIRECTLINK-MOBILE",
						"value": "",
						"description": "Destination mobile (optional)",
						"type": "text"
					},
					{
						"key": "X-STCPDIRECTLINK-HASH",
						"value": "",
						"description": "Hash sha1 hex coded from content body (optional)",
						"type": "text"
					},
					{
						"key": "X-STCPDIRECTLINK-FILENAME",
						"value": "",
						"description": "Filename to be used (optional)",
						"type": "text"
					},
					{
						"key": "X-STCPDIRECTLINK-INFO",
						"value": "",
						"description": "Message (optional)",
						"type": "text"
					}
				],
				"body": {
					"mode": "raw",
					"raw": "{\n    \"teste\": \"luiz\",\n    \"teste2\": \"\"\n}\n"
				},
				"url": {
					"raw": "http://localhost:8080/directlink/v1/upload",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "8080",
					"path": [
						"directlink",
						"v1",
						"upload"
					]
				},
				"description": "Esta requisição deverá ser utilizada para upload de um arquivo para a plataforma, o conteúdo deverá ser formatado json."
			},
			"response": []
		},
		{
			"name": "Report",
			"request": {
				"auth": {
					"type": "basic",
					"basic": [
						{
							"key": "password",
							"value": "{{password}}",
							"type": "string"
						},
						{
							"key": "username",
							"value": "{{username}}",
							"type": "string"
						}
					]
				},
				"method": "GET",
				"header": [
					{
						"key": "Content-type",
						"value": "application/json",
						"type": "text"
					}
				],
				"url": {
					"raw": "http://localhost:8080/directlink/v1/report?page=0",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "8080",
					"path": [
						"directlink",
						"v1",
						"report"
					],
					"query": [
						{
							"key": "page",
							"value": "0",
							"description": "Page number (optional)"
						}
					]
				},
				"description": "Esta requisição deverá ser utilizada para obter o relatório das últimas 100 ocorrências de transferência (upload/download) realizada na plataforma.\n\nNesta requisição também poderá ser informado opcionalmente a página que deve ser retornada."
			},
			"response": []
		},
		{
			"name": "Download file",
			"request": {
				"auth": {
					"type": "basic"
				},
				"method": "GET",
				"header": [],
				"url": {
					"raw": "http://localhost:8080/directlink/v1/download/file?k=",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "8080",
					"path": [
						"directlink",
						"v1",
						"download",
						"file"
					],
					"query": [
						{
							"key": "k",
							"value": "",
							"description": "Token returned by download list"
						}
					]
				},
				"description": "Esta requisição deverá ser utilizada para download do arquivo.\n\nOs arquivos serão movidos da área de download para backup imediatamente após a execução da requisição.\n\nOs arquivos permanecerão na área de backup de acordo com as politicas de retenção estabelecidas na plataforma."
			},
			"response": []
		},
		{
			"name": "Download file from backup",
			"request": {
				"auth": {
					"type": "basic"
				},
				"method": "GET",
				"header": [],
				"url": {
					"raw": "http://localhost:8080/directlink/v1/download/file/backup?k=",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "8080",
					"path": [
						"directlink",
						"v1",
						"download",
						"file",
						"backup"
					],
					"query": [
						{
							"key": "k",
							"value": "",
							"description": "Token returned by download list backup"
						}
					]
				},
				"description": "Esta requisição deverá ser utilizada para download do arquivo da área de backup.\n\nOs arquivos serão removidos da área de backup através das politicas de retenção estabelecidas na plataforma."
			},
			"response": []
		},
		{
			"name": "OAUTH2 token",
			"request": {
				"auth": {
					"type": "noauth"
				},
				"method": "POST",
				"header": [
					{
						"key": "Content-type",
						"value": "application/json",
						"type": "text"
					}
				],
				"body": {
					"mode": "urlencoded",
					"urlencoded": [
						{
							"key": "grant_type",
							"value": "password",
							"description": "grant type (mandatory)",
							"type": "text"
						},
						{
							"key": "username",
							"value": "{{username}}x",
							"description": "Username configured in STCP Gemini Server or STCP Server Enterprise Windows",
							"type": "text"
						},
						{
							"key": "password",
							"value": "{{password}}",
							"description": "Password configured in STCP Gemini Server or STCP Server Enterprise Windows",
							"type": "text"
						}
					]
				},
				"url": {
					"raw": "http://localhost:8080/directlink/v1/oauth2/token",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "8080",
					"path": [
						"directlink",
						"v1",
						"oauth2",
						"token"
					]
				},
				"description": "Esta requisição deverá ser utilizada para obtenção de um token de autenticação para utilização nas demais requisições.\n\nA utilização do token deve ser utilizada através do metódo de autenticação Bearer em substituição do método Basic.\n\nHeader Authorization: Bearer"
			},
			"response": []
		}
	],
	"auth": {
		"type": "basic"
	},
	"event": [
		{
			"listen": "prerequest",
			"script": {
				"type": "text/javascript",
				"exec": [
					""
				]
			}
		},
		{
			"listen": "test",
			"script": {
				"type": "text/javascript",
				"exec": [
					""
				]
			}
		}
	],
	"variable": [
		{
			"key": "username",
			"value": "",
			"type": "string"
		},
		{
			"key": "password",
			"value": "",
			"type": "string"
		}
	]
}
```


{{< callout type="info" >}}
Para o download da aplicação Postman clique [aqui](https://www.postman.com/).
{{< /callout >}}
