---
title: "Instalação"
weight: 10
toc: true
layout: docs
next: /stcp-gemini/install/client/config/
prev: /stcp-gemini/install/client/
---

## Instalação do STCP Gemini Client

Antes de iniciar a instalação, certifique-se de que os requisitos da plataforma foram atendidos e que o repositório Riversoft está corretamente configurado no servidor.

O procedimento de instalação varia de acordo com a distribuição Linux utilizada.

{{< callout type="info" >}}
Se o repositório Riversoft ainda não estiver configurado, consulte **[Configuração do repositório Riversoft](/stcp-gemini/install/getting-started/repo/)** antes de continuar.
{{< /callout >}}

## Enterprise Linux

### Dependências

O STCP Gemini Client utiliza bibliotecas adicionais necessárias para sua instalação e execução.

Entre as principais dependências estão:

- OpenSSL
- libssh
- PCRE2
- libargon2

Essas bibliotecas são identificadas na documentação atual do produto como pré-requisitos para implantação do STCP Gemini Client.

Em distribuições baseadas em Enterprise Linux, algumas dependências podem ser disponibilizadas através do repositório EPEL.

Quando aplicável à distribuição utilizada, habilite o repositório:

```shell
dnf install -y epel-release
```

> [!NOTE]
> A disponibilidade e a forma de habilitação do EPEL podem variar de acordo com a distribuição Linux utilizada. Consulte a documentação oficial da distribuição para validar o procedimento correspondente.

Após disponibilizar as dependências necessárias, instale o pacote do STCP Gemini Client:

```shell
dnf install -y stcpgemini-client
```

Durante a instalação, o gerenciador de pacotes irá resolver e instalar automaticamente as dependências disponíveis nos repositórios configurados no sistema.

### Validar a instalação

Após a conclusão, confirme se o pacote foi instalado corretamente:

```shell
rpm -q stcpgemini-client
```

Se a instalação tiver sido concluída com sucesso, o comando exibirá a versão do pacote instalado.

---

## Ubuntu e Debian

### Dependências

Antes de instalar o STCP Gemini Client, atualize o índice local de pacotes:

```shell
apt update
```

Instale as dependências necessárias:

```shell
apt install -y pcre2-utils gnupg2 libargon2*
```

O procedimento acima segue a instalação de dependências documentada atualmente para Ubuntu e Debian.

Após concluir a instalação das dependências, instale o STCP Gemini Client:

```shell
apt install -y stcpgemini-client
```

A documentação atual utiliza o APT para instalação do pacote `stcpgemini-client`.

### Validar a instalação

Após a conclusão, confirme se o pacote foi instalado corretamente:

```shell
dpkg -s stcpgemini-client
```

Se a instalação tiver sido concluída com sucesso, serão exibidas as informações do pacote instalado.

{{< callout type="info" >}}
A instalação do pacote disponibiliza os arquivos e componentes necessários ao STCP Gemini Client. As definições específicas do ambiente são realizadas posteriormente durante a etapa de configuração.
{{< /callout >}}

## Diretório de instalação

Por padrão, os arquivos do STCP Gemini Client são instalados no diretório:

```text
/usr/local/stcpclient
```

A estrutura de configuração utilizada pelo produto está localizada abaixo desse diretório.

## Próxima etapa

Após validar a instalação, prossiga para **[Configuração inicial do STCP Gemini Client](/stcp-gemini/install/client/config/)**.