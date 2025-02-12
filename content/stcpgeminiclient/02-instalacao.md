---
linkTitle: Instalação
# title: Instalação Gemini Client
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 2
prev: /stcpgeminiclient
next: /02-config-sgc/
slug: instalacao
lastmod: 2024-06-21
---
## Requisitos

O STCP Gemini Clientestá homologado para as distribuições RedHat Enterprise Linux (versões 7, 8 e 9), Amazon Linux (versões 2 e 2023), Oracle Linux (versões 7, 8 e 9), Rocky Linux (versões 8 e 9), Debian (versão 11 e 12) e Ubuntu (versões 18.04, 20.04, 22.04 e 24.04).

Por questões de segurança, o STCP Gemini Client utiliza versões mais recentes das bibliotecas **openssl**, **libssh**, **pcre2** e **libargon2**.

Essas bibliotecas são dependências (pré-requisitos) para que o STCP Gemini Client possa ser implantado corretamente e deverão estar instaladas no servidor em que o software será implantado.

A instalação do STCP Gemini Client será realizada através do repositório oficial da Riversoft, de acordo com a distribuição Linux utilizada.

## Distribuições Linux

As distribuições disponíveis para instalação são:

* Red Hat Enterprise Linux: versões 7, 8 e 9.
* Rocky Linux: versão 8 e 9.
* Oracle Linux: versões 7, 8 e 9.
* Ubuntu: versões 18.04, 20.04, 22.04 e 24.04.
* Debian: versões 11 e 12.
* Amazon Linux: 2 e 2023.

## Instalação das dependências

![](img/sgc-01.png)

As dependências para o STCP Gemini Client podem ser instaladas através do repositório EPEL, assim como, através dos seus respectivos pacotes RPM e conforme padrão e práticas adotadas por cada organização.

```bash
yum install epel-release
```

> [!TIP] Nota
> O EPEL (Extra Packages for Enterprise Linux) é um repositório utilizado por administradores de sistemas Linux que necessitam instalar no servidor, pacotes mais recentes e versões atualizadas de bibliotecas, visto que esses pacotes mais novos não são imediatamente adicionados aos repositórios oficiais.

Para o Amazon Linux 2 o acesso ao EPEL pode ser habilitado através dos comandos:

```bash
$ yum update -y 
$ amazon-linux-extras install epel -y
```

> [!TIP] Nota
> A instalação do EPEL não é necessária para o Amazon Linux 2023.

No Oracle Linux, de acordo com a versão utilizada, o acesso ao EPEL pode ser habilitado através do comando abaixo. Para mais informações consulte a documentação da Oracle (https://yum.oracle.com/).

```bash
yum install Oracle-epel-release-el7.x86_64
yum install Oracle-epel-release-el8.x86_64
yum install Oracle-epel-release-el9.x86_64
```

Mais informações sobre como configurar o EPEL, podem ser obtidas através do link abaixo ou na documentação da distribuição utilizada.

[Epel documentation](https://fedoraproject.org/wiki/EPEL)

### Instalação do STCP Gemini Client 

Para instalar o STCP Gemini Client será necessária a configuração do repositório oficial da Riversoft no servidor conforme a distribuição Linux utilizada.

Utilizando o terminal, execute os passos a seguir:

```sh
# RHEL 7, Oracle Linux 7 e Amazon Linux 2  
$ curl https://repo.riversoft.com.br/configs/riversoft-centos-7.repo --output /etc/yum.repos.d/riversoft-release.repo
```

```sh
# RHEL 8, Oracle Linux 8 e Rocky Linux 8  
$ curl https://repo.riversoft.com.br/configs/riversoft-redhat-8.repo --output /etc/yum.repos.d/riversoft-release.repo
```

```sh
# RHEL 9, Oracle Linux 9, Rocky Linux 9 e Amazon Linux 2023 
$ curl https://repo.riversoft.com.br/configs/riversoft-redhat-9.repo --output /etc/yum.repos.d/riversoft-release.repo
```

Após a configuração do repositório, utilize o comando padrão do YUM para instalar o STCP Gemini Client. 

```sh
$ yum install -y stcpgemini-client.x86_64 
```

Confirme as informações exibidas na tela para concluir a instalação e logo após siga a seção de [Configuração](/stcpgeminiclient/configuracao).

## Instalação no Ubuntu e Debian

A instalação das dependências para o STCP Gemini Client pode ser realizada através do gerenciados de pacotes APT, assim como, através dos seus respectivos pacotes RPM e conforme padrão e práticas adotadas por cada organização.

Utilizando o terminal, execute o passo a seguir:

```sh
$ apt update 
$ apt install -y pcre2-utils gnupg2 libargon2* 
```

### Instalação do STCP Gemini Client 

O próximo passo será configurar o repositório oficial da Riversoft no servidor conforme a distribuição Linux utilizada. 
 
Utilizando o terminal, execute os passos a seguir: 

```sh
# Ubuntu 18.04 
$ curl https://repo.riversoft.com.br/configs/riversoft-apt-repo-bionic.list > /etc/apt/sources.list.d/apt-riversoft.list 
```

```sh
# Ubuntu 20.04 e Debian 11 
$ curl https://repo.riversoft.com.br/configs/riversoft-apt-repo-focal.list > /etc/apt/sources.list.d/apt-riversoft.list 
```

```sh
# Ubuntu 22.04 
$ curl https://repo.riversoft.com.br/configs/riversoft-apt-repo-jammy.list > /etc/apt/sources.list.d/apt-riversoft.list 
```

```sh
# Ubuntu 24.04 e Debian 12 
$ curl https://repo.riversoft.com.br/configs/riversoft-apt-repo-noble.list > /etc/apt/sources.list.d/apt-riversoft.list 
```

Antes de instalar o STCP Gemini Client será necessário incluir a chave pública GPG, para que o sistema possa verificar a autenticidade dos pacotes do repositório oficial da Riversoft. 

Utilizando o terminal, execute os passos a seguir: 

```sh
# Ubuntu 18.04, 20.04 e Debian 11  
$ curl https://repo.riversoft.com.br/certs/riversoft.asc | gpg --dearmor >> /etc/apt/trusted.gpg.d/riversoft.gpg 
```

```sh
# Ubuntu 22.04, 24.04 e Debian 12 
$ curl https://repo.riversoft.com.br/certs/riversoft.asc | gpg --dearmor >> /usr/share/keyrings/riversoft-key.gpg
```

Após a configuração do repositório, utilize os comandos padrão do APT para instalar o STCP Gemini Client. 

```sh
$ apt update 
$ apt install stcpgemini-client 
```

Confirme as informações exibidas na tela para concluir a instalação e logo após siga a seção de [Configuração](/stcpgeminiclient/configuracao).


