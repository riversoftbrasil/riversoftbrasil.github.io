---
title: "Repositório"
description: ""
weight: 20
toc: true
next: /stcp-gemini/install/api/
---
## Configuração do Repositório

Os pacotes da plataforma STCP Gemini são disponibilizados nos repositórios oficiais da Riversoft.

A configuração do repositório varia de acordo com a distribuição Linux utilizada.

Os repositórios para sistemas compatíveis com Enterprise Linux são utilizados para distribuição dos seguintes componentes:

- STCP Gemini Server
- STCP Gemini API
- STCP Gemini Portal
- STCP Gemini Directlink
- STCP Gemini Client

Para sistemas Ubuntu e Debian, os repositórios APT são utilizados para distribuição do STCP Gemini Client.

> [!NOTE]
> Consulte os [requisitos da plataforma](/stcp-gemini/requirements/) para verificar os sistemas operacionais e versões suportadas por cada componente.

---

## Enterprise Linux

Para distribuições compatíveis com Enterprise Linux, a Riversoft disponibiliza arquivos `.repo` específicos para cada versão suportada.

A configuração do repositório é comum aos componentes STCP Gemini disponíveis para essa plataforma.

A forma recomendada de configuração é baixar diretamente o arquivo `.repo` correspondente à versão do sistema operacional utilizando `curl`.

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

### Validação GPG

Todos os repositórios utilizam validação de assinatura GPG (`gpgcheck=1`).

A chave pública utilizada para validar a autenticidade e a integridade dos pacotes está disponível em:

```text
https://repo.riversoft.com.br/certs/riversoft.asc
```

> [!NOTE]
> Recomenda-se utilizar os arquivos `.repo` disponibilizados pela Riversoft em `/configs`, em vez de criar ou editar manualmente a configuração do repositório. Isso reduz o risco de inconsistências e facilita futuras alterações na estrutura dos repositórios.

> [!IMPORTANT]
> Caso já exista uma configuração anterior do repositório Riversoft em `/etc/yum.repos.d/`, verifique e remova ou desabilite arquivos antigos antes de aplicar a nova configuração, evitando repositórios duplicados ou conflitos durante a instalação e atualização dos pacotes.

### Atualização dos metadados

Após configurar o repositório, atualize os metadados locais do gerenciador de pacotes:

```shell
dnf clean all
dnf makecache
```

Após essa etapa, o repositório Riversoft estará configurado e disponível para utilização durante a instalação dos componentes STCP Gemini compatíveis com o ambiente.

## Ubuntu e Debian

Para sistemas Ubuntu e Debian, a Riversoft disponibiliza repositórios no formato APT destinados ao STCP Gemini Client.

A documentação atual do STCP Gemini Client contempla Ubuntu 18.04, 20.04, 22.04 e 24.04, além de Debian 11 e 12.

Utilize o arquivo de configuração correspondente à versão do sistema operacional.

| Sistema operacional | Repositório |
| --- | --- |
| Ubuntu 18.04 | Bionic |
| Ubuntu 20.04 | Focal |
| Debian 11 | Focal |
| Ubuntu 22.04 | Jammy |
| Ubuntu 24.04 | Noble |
| Debian 12 | Noble |

O mapeamento dos arquivos de repositório segue a documentação atual do STCP Gemini Client.

### Ubuntu 18.04

```shell
curl https://repo.riversoft.com.br/configs/riversoft-apt-repo-bionic.list \
  --output /etc/apt/sources.list.d/apt-riversoft.list
```

### Ubuntu 20.04 e Debian 11

```shell
curl https://repo.riversoft.com.br/configs/riversoft-apt-repo-focal.list \
  --output /etc/apt/sources.list.d/apt-riversoft.list
```

### Ubuntu 22.04

```shell
curl https://repo.riversoft.com.br/configs/riversoft-apt-repo-jammy.list \
  --output /etc/apt/sources.list.d/apt-riversoft.list
```

### Ubuntu 24.04 e Debian 12

```shell
curl https://repo.riversoft.com.br/configs/riversoft-apt-repo-noble.list \
  --output /etc/apt/sources.list.d/apt-riversoft.list
```

### Validação GPG

Antes de utilizar o repositório APT, importe a chave pública GPG da Riversoft para que o sistema possa validar a autenticidade dos pacotes.

A localização da chave varia de acordo com a versão do sistema operacional.

#### Ubuntu 18.04, Ubuntu 20.04 e Debian 11

```shell
curl https://repo.riversoft.com.br/certs/riversoft.asc | \
  gpg --dearmor --output /etc/apt/trusted.gpg.d/riversoft.gpg
```

#### Ubuntu 22.04, Ubuntu 24.04 e Debian 12

```shell
curl https://repo.riversoft.com.br/certs/riversoft.asc | \
  gpg --dearmor --output /usr/share/keyrings/riversoft-key.gpg
```

> [!NOTE]
> A chave pública utilizada para validação dos pacotes está disponível em:
>
> `https://repo.riversoft.com.br/certs/riversoft.asc`

### Atualização do índice de pacotes

Após configurar o repositório e importar a chave GPG, atualize o índice local de pacotes:

```shell
apt update
```

Após essa etapa, o repositório Riversoft estará configurado e disponível para utilização durante a instalação do STCP Gemini Client.

## Próximos passos

Após configurar o repositório, prossiga para a seção de instalação do componente correspondente.