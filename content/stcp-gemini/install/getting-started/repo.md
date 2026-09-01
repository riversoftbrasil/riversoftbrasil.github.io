---
title: "Repositório"
description: ""
weight: 20
toc: true
next: /stcp-gemini/install/api/
---

## Configuração do Repositório

Os pacotes dos componentes da plataforma STCP Gemini são disponibilizados nos repositórios oficiais da Riversoft. Para facilitar a configuração do ambiente, são fornecidos arquivos `.repo` específicos para cada versão do Enterprise Linux suportada.

A forma recomendada de configuração é baixar diretamente o arquivo de repositório correspondente à versão do sistema operacional utilizando `curl`.

### Enterprise Linux 8

```shell
curl https://repo.riversoft.com.br/configs/riversoft-el8.repo \
  --output /etc/yum.repos.d/riversoft-release.repo
```

### Enterprise Linux 9

```shell
curl https://repo.riversoft.com.br/configs/riversoft-el9.repo \
  --output /etc/yum.repos.d/riversoft-release.repo
```

### Enterprise Linux 10

```shell
curl https://repo.riversoft.com.br/configs/riversoft-el10.repo \
  --output /etc/yum.repos.d/riversoft-release.repo
```

Os arquivos disponibilizados pela Riversoft configuram automaticamente os repositórios de produção correspondentes à arquitetura do sistema (`$basearch`) e aos pacotes independentes de arquitetura (`noarch`).

Por exemplo, para Enterprise Linux 9, são configurados os seguintes repositórios:

```ini
[Riversoft-el9-prod]
name=Riversoft Packages for Enterprise Linux 9 (prod) - $basearch
baseurl=https://repo.riversoft.com.br/prod/el9/$basearch
enabled=1
gpgcheck=1
gpgkey=https://repo.riversoft.com.br/certs/riversoft.asc

[Riversoft-el9-prod-noarch]
name=Riversoft Packages for Enterprise Linux 9 (prod) - noarch
baseurl=https://repo.riversoft.com.br/prod/el9/noarch
enabled=1
gpgcheck=1
gpgkey=https://repo.riversoft.com.br/certs/riversoft.asc
```

A mesma estrutura é utilizada para Enterprise Linux 8 e Enterprise Linux 10, alterando-se apenas a versão presente no endereço do repositório.

Todos os repositórios utilizam validação de assinatura GPG (`gpgcheck=1`). A chave pública utilizada na validação dos pacotes está disponível em:

```text
https://repo.riversoft.com.br/certs/riversoft.asc
```

> [!NOTE]
> Recomenda-se utilizar os arquivos `.repo` disponibilizados em `/configs`, em vez de criar ou editar manualmente a configuração do repositório. Isso reduz o risco de inconsistências e facilita futuras alterações na estrutura dos repositórios da Riversoft.

> [!IMPORTANT]
> Caso já exista uma configuração anterior do repositório Riversoft em `/etc/yum.repos.d/`, verifique e remova ou desabilite arquivos antigos antes de aplicar a nova configuração, evitando repositórios duplicados ou conflitos durante a instalação e atualização dos pacotes.

Após configurar o repositório, atualize os metadados do gerenciador de pacotes antes de prosseguir com a instalação dos componentes da plataforma:

```shell
dnf clean all
dnf makecache
```