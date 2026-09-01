---
title: "Instalação"
weight: 10
toc: true
layout: docs
next: /stcp-gemini/install/portal/config/
prev: /stcp-gemini/install/portal/
---
## Instalação do STCP Gemini Portal

Antes de iniciar a instalação, certifique-se de que os requisitos da plataforma foram atendidos e que o repositório Riversoft está corretamente configurado no servidor.

{{< callout type="warning" >}} 
Certifique-se de que o STCP Gemini API já esteja instalado e em execução antes de prosseguir.
{{< /callout >}} 

Após concluir essas etapas, instale o pacote do STCP Gemini Portal utilizando o comando abaixo:

```shell
dnf install -y stcpgemini-portal
```

Durante a instalação, o gerenciador de pacotes irá resolver e instalar automaticamente as dependências necessárias disponíveis nos repositórios configurados no sistema.

{{< callout type="info" >}}
Se o repositório Riversoft ainda não estiver configurado, consulte **[Configuração do repositório Riversoft](/stcp-gemini/install/getting-started/repo/)** antes de continuar.
{{< /callout >}}

Após a conclusão, confirme se o pacote foi instalado corretamente:

```shell
$ rpm -q stcpgemini-portal
```

Se a instalação tiver sido concluída com sucesso, o comando exibirá a versão do pacote instalado.

{{< callout type="info" >}}
A instalação do pacote disponibiliza os arquivos e componentes necessários ao STCP Gemini Portal. As definições específicas do ambiente são realizadas posteriormente durante a etapa de configuração.
{{< /callout >}}

Por padrão, os arquivos do STCP Gemini Portal são instalados no diretório:

```text
/usr/local/stcpgemini-api/portal/
```

## Próxima etapa

Após validar a instalação, prossiga para **[Configuração inicial do STCP Gemini Portal](/stcp-gemini/install/portal/config/)**.