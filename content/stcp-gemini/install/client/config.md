---
title: "Configuração"
weight: 20
toc: true
layout: docs
next: /stcp-gemini/install/client/execute/
prev: /stcp-gemini/install/client/install/
---
## Criação do arquivo de configuração

Concluída a instalação, siga os passos abaixo:

- Acesse a pasta de configurações em `/usr/local/stcpclient/configs`;
- Verifique a existência do arquivo `example-stcpclient.config.json`;
- Renomeie-o ou faça uma cópia para `stcpclient.config.json`.

```shell
cd /usr/local/stcpclient/configs
```

```shell
cp example-stcpclient.config.json stcpclient.config.json
```

## Configuração inicial

A configuração do STCP Gemini Client é realizada através do utilitário **STCP Gemini Client Config**.

Para iniciar o processo de configuração, execute:

```shell
stcpclient-config init
```

O comando inicia um assistente interativo que solicita as informações necessárias para geração dos arquivos de configuração utilizados pelo STCP Gemini Client.

### Parâmetros solicitados

Durante a execução do `init`, o configurador solicita os seguintes parâmetros:

| Parâmetro | Descrição |
| :--- | :--- |
| Número de série | Número de série utilizado pelo STCP Gemini Client. |
| Sistema operacional | Sistema operacional onde o cliente será executado. Valores apresentados pelo configurador: `0` para Linux, `1` para macOS e `2` para Windows. |
| Nome do perfil | Nome utilizado para identificar o perfil de comunicação do STCP Gemini Client. |
| OID (Odette ID) | Identificação OFTP utilizada pelo cliente durante a comunicação com o parceiro. |
| Senha do OID | Senha associada ao OID configurado. |
| Confirmação da senha do OID | Confirmação da senha informada para o OID. |
| Endereço IP remoto | Endereço IP ou nome do host do servidor remoto utilizado na conexão. |
| Porta IP | Porta utilizada para estabelecer a conexão com o servidor remoto. |
| Comunicação Segura (TLS) | Define se a comunicação com o servidor remoto utilizará TLS. |
| Certificado de arquivo | Certificado utilizado na comunicação segura quando configurado através de arquivo. |
| Certificado de diretório | Diretório utilizado para localização dos certificados necessários à comunicação segura. |
| Backup de arquivos transmitidos | Define se os arquivos transmitidos serão mantidos em backup após o envio. |
| Nome longo para arquivos | Define se nomes longos de arquivos serão permitidos durante as transferências. |

Após o preenchimento das informações solicitadas, o configurador gera os arquivos JSON necessários para execução do STCP Gemini Client.

Quando o processo for concluído com sucesso, será exibida a mensagem:

```text
Todos os arquivos JSON foram gerados com sucesso!
```

{{< callout type="info" >}}
Não é necessário utilizar o superusuário (`root`) para executar a configuração do STCP Gemini Client.
{{< /callout >}}

> [!IMPORTANT]
> Certifique-se de que as informações de comunicação, OID, certificados e endereço remoto estejam de acordo com os parâmetros definidos para o parceiro antes de executar o STCP Gemini Client.

## Próxima etapa

Após concluir a configuração, prossiga para **[Modos de execução do STCP Gemini Client](/stcp-gemini/install/client/execute/)**.