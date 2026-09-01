---
title: "Configuração"
weight: 20
toc: true
layout: docs
next: /stcp-gemini/install/portal/access/
prev: /stcp-gemini/install/portal/install/
---
## Criação do arquivo de configuração
 
O STCP Gemini Portal é disponibilizado integrado ao STCP Gemini API, que também serve os arquivos estáticos do Portal, dispensando a necessidade de um servidor web adicional.

Concluída a instalação, siga os passos abaixo para criar o arquivo de configuração da aplicação:
 
- Acesse a pasta de configurações em `/usr/local/stcpgemini-api/portal/app/configs`;
- Verifique a existência do arquivo `example-config.json`;
- Renomeie-o ou faça uma cópia para `config.json`.
```shell
cd /usr/local/stcpgemini-api/portal/app/configs
```
```shell
cp example-config.json config.json
```
 
O arquivo `config.json` contém as informações necessárias para atender o ambiente e as funcionalidades do STCP Gemini Portal.
 
Segue abaixo um exemplo:
 
```json
{
    "EntryPoint": [
        {
            "name": "STCPGEMINI-PROD",
            "address": "https://portal.example.com.br:33070"
        }
    ],
    "defaultLanguage": "pt"
}
```
 
Como o arquivo de configuração é único para cada aplicação, é preciso preenchê-lo com informações coerentes com o ambiente. As tabelas abaixo descrevem os principais parâmetros a serem revisados.
 
## Parâmetros do arquivo de configuração
 
Parâmetros disponíveis no arquivo `config.json`.
 
#### EntryPoint
 
| Parâmetro | Descrição |
| :--- | :--- |
| `name` | Nome de exibição do endpoint na interface do Portal. |
| `address` | Endereço completo do endpoint do STCP Gemini API, no formato `esquema://host:porta` (ex.: `https://portal.example.com.br:33070`). |

{{< callout type="info" >}} 
O endereço informado em `address` deve apontar para o `host` e a `port` em que o STCP Gemini API está configurado para escutar (seção `general` do `config.json` da API).
{{< /callout >}} 
 
#### defaultLanguage
 
| Parâmetro | Descrição |
| :--- | :--- |
| `defaultLanguage` | Idioma padrão da interface do Portal (ex.: `pt`). |
 
## Configuração com múltiplos ambientes:

É possível cadastrar mais de um `EntryPoint` para alternar entre diferentes ambientes (ex.: produção e homologação) diretamente pela interface do Portal.

Exemplo com múltiplos ambientes:
 
```json
{
    "EntryPoint": [
        {
            "name": "STCPGEMINI-PROD",
            "address": "https://portal.example.com:33070"
        },
        {
            "name": "STCPGEMINI-HML",
            "address": "https://hml-portal.example.com:33070"
        }
    ],
    "defaultLanguage": "pt"
}
```