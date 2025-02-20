![](../img/logo.png)

<br>

A transferência de arquivos (transmissão e/ou recepção) entre os parceiros e o servidor {{ customer }} será realizada através da aplicação cliente do STCP {{ customer }}, disponível para as plataformas Windows (STCP OFTP Client) e Linux (STCP Gemini Client). Esse software será disponibilizado para os parceiros sem custos de licenciamento e suporte. 

Uma caixa postal (Usuário) será criada no servidor STCP {{ customer }} e através do software cliente os arquivos serão transferidos de modo seguro entre {{ customer }} e os seus parceiros. 

Todo o processo envolvendo essa transferência de arquivos ocorre diretamente entre {{ customer }} e os seus parceiros. Nenhuma informação será trafegada, administrada, coletada e/ou armazenada pela Riversoft. 

O STCP Gemini Client é uma aplicação cliente utilizada para transferência de arquivos seguro e multiprotocolo para aplicações de e-business e troca de informações corporativas, baseado na especificação OFTP (ODETTE File Transfer Protocol).

## Instalação

Esta seção tem como objetivo descrever os passos iniciais para instalação e configuração do STCP Gemini Client. Outras configurações podem ser realizadas conforme as necessidades específicas do ambiente e/ou funcionalidades utilizadas.

### Requisitos

O STCP Gemini Clientestá homologado para as distribuições RedHat Enterprise Linux (versões 7, 8 e 9), Amazon Linux (versões 2 e 2023), Oracle Linux (versões 7, 8 e 9), Rocky Linux (versões 8 e 9), Debian (versão 11 e 12) e Ubuntu (versões 18.04, 20.04, 22.04 e 24.04).

Por questões de segurança, o STCP Gemini Client utiliza versões mais recentes das bibliotecas **openssl**, **libssh**, **pcre2** e **libargon2**. 

Essas bibliotecas são dependências (pré-requisitos) para que o STCP Gemini Client possa ser implantado corretamente e deverão estar instaladas no servidor em que o software será implantado.

A instalação do STCP Gemini Client será realizada através do repositório oficial da Riversoft, de acordo com a distribuição Linux utilizada.

## Instalação: Red Hat Enterprise Linux, Oracle Linux e Amazon Linux

### Instalação das dependências

![](../img/image-01.png) 

As dependências para o STCP Gemini Client podem ser instaladas através do repositório EPEL, assim como, através dos seus respectivos pacotes RPM e conforme padrão e práticas adotadas por cada organização.

```bash
$ yum install -y epel-release
```

> [!NOTE] Nota: 
> O EPEL (Extra Packages for Enterprise Linux) é um repositório utilizado por administradores de sistemas Linux que necessitam instalar no servidor, pacotes mais recentes e versões atualizadas de bibliotecas, visto que esses pacotes mais novos não são imediatamente adicionados aos repositórios oficiais.

No Amazon Linux o acesso ao EPEL pode ser habilitado através do comando:

```bash
amazon-linux-extras enable epel
```

Para o Amazon Linux 1 e 2 o acesso ao EPEL pode ser habilitado através dos comandos:

```bash
# Amazon Linux 2

$ yum update -y
$ amazon-linux-extras install epel -y
```

> [!NOTE] Nota: 
> A instalação do EPEL não é necessária para o Amazon Linux 2023.

No Oracle Linux, de acordo com a versão utilizada, o acesso ao EPEL pode ser habilitado através do comando abaixo. Para mais informações consulte a documentação da Oracle (https://yum.oracle.com/).

```bash
$ yum install Oracle-epel-release-el7.x86_64
$ yum install Oracle-epel-release-el8.x86_64
$ yum install Oracle-epel-release-el9.x86_64 
```

Mais informações sobre como configurar o EPEL, podem ser obtidas através do link abaixo ou na documentação da distribuição utilizada.

```
https://fedoraproject.org/wiki/EPEL
```

### Instalação do STCP Gemini Client

Para instalar o STCP Gemini Client será necessária a configuração do repositório oficial da Riversoft no servidor conforme a distribuição Linux utilizada.

Para isso, utilizando o terminal, execute os passos a seguir:

```bash
# RHEL 7, Oracle Linux 7 e Amazon Linux 2 

$ curl https://repo.riversoft.com.br/configs/riversoft-centos-7.repo -- output /etc/yum.repos.d/riversoft-release.repo
```

```bash
# RHEL 8, Oracle Linux 8 e Rocky Linux 8 
$ curl https://repo.riversoft.com.br/configs/riversoft-redhat-8.repo -- output /etc/yum.repos.d/riversoft-release.repo
```

```bash
# RHEL 9, Oracle Linux 9, Rocky Linux 9 e Amazon Linux 2023

$ curl https://repo.riversoft.com.br/configs/riversoft-redhat-9.repo -- output /etc/yum.repos.d/riversoft-release.repo
```

Após a configuração do repositório, utilize o comando padrão do YUM para instalar o STCP Gemini Client.

```bash
$ yum install -y stcpgemini-client.x86_64
```

Confirme as informações exibidas na tela para concluir a instalação e siga para o passo [Configuração](#configuração). 

Este comando criará um arquivo chamado riversoft-release.repo. Insira nele os seguintes dados:

## Instalação: Ubuntu e Debian

### Instalação das dependências

A instalação das dependênciaspara o STCP Gemini Client pode ser realizada através do gerenciados de pacotes APT, assim como, através dos
seus respectivos pacotes RPM e conforme padrão e práticas adotadas por cada organização.

![](../img/image-02.png) 

Utilizando o terminal, execute o passo a seguir:

```bash
$ apt update
$ apt install -y pcre2-utils gnupg2 libargon2*
```

### Instalação do STCP Gemini Client

O próximo passo será configurar o repositório oficial da Riversoft no servidor conforme a distribuição Linux utilizada.

Utilizando o terminal, execute os passos a seguir:

```bash
# Ubuntu 18.04
$ curl https://repo.riversoft.com.br/configs/riversoft-apt-repobionic.list > /etc/apt/sources.list.d/apt-riversoft.list
```

```bash
# Ubuntu 20.04 e Debian 11
$ curl https://repo.riversoft.com.br/configs/riversoft-apt-repofocal.list > /etc/apt/sources.list.d/apt-riversoft.list
```

```bash
# Ubuntu 22.04
$ curl https://repo.riversoft.com.br/configs/riversoft-apt-repojammy.list > /etc/apt/sources.list.d/apt-riversoft.list
```

```bash
# Ubuntu 24.04 e Debian 12
$ curl https://repo.riversoft.com.br/configs/riversoft-apt-reponoble.list > /etc/apt/sources.list.d/apt-riversoft.list
```

Antes de instalar o STCP Gemini Client será necessário incluir a **chave pública GPG**, para que o sistema possa verificar a autenticidade dos pacotes do repositório oficial da Riversoft.

Utilizando o terminal, execute os passos a seguir:

```bash
# Ubuntu 18.04, 20.04 e Debian 11
$ curl https://repo.riversoft.com.br/certs/riversoft.asc | gpg --dearmor >> /etc/apt/trusted.gpg.d/riversoft.gpg
```

```bash
# Ubuntu 22.04, 24.04 e Debian 12
$ curl https://repo.riversoft.com.br/certs/riversoft.asc | gpg --dearmor >> /usr/share/keyrings/riversoft-key.gpg
```

Após a configuração do repositório, utilize os comandos padrão do APT para instalar o STCP Gemini Client.

```bash
$ apt update
$ apt install stcpgemini-client
```

Confirme as informações exibidas na tela para concluir a instalação e siga para o passo  de **Configuração** logo abaixo.  

## Configuração

Toda a configuração da aplicação será realizada através do STCP Gemini ClientConfig. Não é necessária a utilização do super-usuário (root) para a configuração. 

![](../img/image-03.png) 

Siga os passos abaixo para criar o arquivo de configuração da aplicação:

```bash
$ cd /usr/local/stcpclient/configs/
$ cp example-stcpclient.config.json stcpclient.config.json
```

Execute o configurador do STCP Gemini Client e siga os passos exibidos na tela para concluir a configuração.

```bash
$ stcpclient-config init
```

![](../img/image-04.png) 


| Parâmetros       |  Descrição      | 
| -------------    | :-------------: | 
| Número de série  |  **Fornecido por {{ customer }}**   | 
| Sistema operacional   | 0-Linux                  |    
| Nome do Perfil        | {{ profile }}            |   
| OID (Odette ID)       | **Fornecido por {{ customer }}**  |   
| Senha OID (Odette ID) | **Fornecido por {{ customer }}**  |   
| Endereço IP           | {{ url }}       |   
| Porta                 |         {{ port }}                   |   
| Comunicação segura (TLS) |         {{ tls }}               |   
| Certificado de arquivo   |      Deixar em branco     |   
| Certificado de diretório |      Deixar em branco     |   
| Backup arquivos transmitidos |         Não               |   
| Nome longo para arquivos     |         Sim               |   

## Execução

Para executar a aplicação, através do terminal, utilize a linha de comando abaixo:

```bash
$ stcpclient -p {{ profile }} -r 1 /usr/local/stcpclient/configs/stcpclient.config.json
```

Após a execução do STCP Gemini Client, assim que a conexão com servidor {{ customer }} for estabelecida com sucesso, os arquivos serão enviados e/ou recebidos automaticamente:

![](../img/image-05.png)

### Como enviar e receber arquivos

Os arquivos que serão enviados para a {{ customer }} deverão ser disponibilizados na pasta SAIDA da aplicação.

```bash
/usr/local/stcpclient/data/STCPClt/{{ profile }}/SAIDA
```

Em seguida, execute o STCP Gemini Client conforme descrito acima na seção de [Execução](#execução).

> [!NOTE] Nota: 
> Todos os arquivos que estiverem na pasta SAIDA serão enviados. Os arquivos enviados com sucesso serão removidos automaticamente da pasta de **SAIDA**.

Ao executar o STCP Gemini Client, os arquivos que forem recebidos na caixa {{ customer }} ficarão disponíveis na pasta ENTRADA da aplicação.

```
/usr/local/stcpclient/data/STCPClt/{{ profile }}/ENTRADA
```

### Modo de execução através do Cron

É possível automatizar a execução do STCP Gemini Client utilizando ferramentas de agendamento que permitem controlar tarefas a serem executadas em tempos pré-configurados, como por exemplo, o Cron. 

```bash
$ sudo cat /etc/crontab

0 0 * * * /bin/bash -l -c "PATH=\"$PATH:/usr/local/bin\"; stcpclient -p {{ profile }} -r 1 /usr/local/stcpclient/configs/stcpclient.config.json"
```

## Logs 

Todo o processo de conexão e transferência de arquivos do STCP Gemini Client é registrado em arquivos de log.

A aplicação cria um conjunto de arquivos de texto diário contendo as informações de cada conexão, envio e recepção de arquivos.

Através dos arquivos de log é possível auditar todosos eventos de comunicação e ocorrências de sucesso e/ou falhas no processo de transferência.

![](../img/image-06.png)

Os arquivos de log são armazenados na pasta LOG.

```
/usr/local/stcpclient/logs
```

![](../img/image-07.png)

