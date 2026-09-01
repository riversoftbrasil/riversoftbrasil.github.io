---
title: "Instalação"
weight: 10
toc: true
layout: docs
next: /stcp-gemini/install/server/config
prev: /stcp-gemini/install/server/
---
## Instalação do STCP Gemini Server

Antes de iniciar a instalação, certifique-se de que os requisitos da plataforma foram atendidos e que o repositório Riversoft está corretamente configurado no servidor.

Após concluir essas etapas, instale o pacote do STCP Gemini Server utilizando o comando abaixo:

```shell
dnf install -y stcpgemini-server
```

Durante a instalação, o gerenciador de pacotes irá resolver e instalar automaticamente as dependências necessárias disponíveis nos repositórios configurados no sistema.

{{< callout type="info" >}}
Se o repositório Riversoft ainda não estiver configurado, consulte **[Configuração do repositório Riversoft](/stcp-gemini/install/getting-started/repo/)** antes de continuar.
{{< /callout >}}

Após a conclusão, confirme se o pacote foi instalado corretamente:

```shell
rpm -q stcpgemini-server
```

Se a instalação tiver sido concluída com sucesso, o comando exibirá a versão do pacote instalado.

{{< callout type="info" >}}
A instalação do pacote disponibiliza os arquivos e componentes necessários ao STCP Gemini Server. As definições específicas do ambiente são realizadas posteriormente durante a etapa de configuração.
{{< /callout >}}

Por padrão, os arquivos do STCP Gemini Server são instalados no diretório:

```text
/usr/local/stcp
```

## Componente complementar

Para utilizar os recursos de **roteamento e automação de operações com arquivos**, é necessário instalar o **STCP Gemini Rename (STCPRen)** no mesmo servidor ou na mesma imagem de container em que o **STCP Gemini Server** estiver instalado.

Consulte a seção <a href="/stcp-gemini/install/rename/" target="_blank" rel="noopener noreferrer"><strong>STCP Gemini Rename</strong> ↗</a> para obter as instruções de instalação e configuração do componente.

## Próxima etapa

Após validar a instalação, prossiga para **[Configuração inicial do STCP Gemini Server](/stcp-gemini/install/server/config/)**.