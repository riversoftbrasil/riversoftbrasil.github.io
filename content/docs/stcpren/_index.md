---
linkTitle: STCP Rename
layout: docs
sidebar:
  exclude: true
weight: 7
prev:
next:
---
## Introdução

### O que é o STCPRen?

O STCPRen é uma aplicação que possibilita o renomeio e cópia de arquivos, varredura em diretórios e execução de processo, baseado na configuração de regras de validação dos nomes destes arquivos.

O STCPRen pode ser utilizado na integração do STCP OFTP Server ou STCP OFTP Client com diferentes outras aplicações (ERPs, EDI, etc...) de forma simples e direta.

No cenário apresentado abaixo, mostramos a integração da estrutura de diretórios de transferência do STCP OFTP Client com a de incorporação e geração de arquivos financeiros de um sistema de ERP.

![](./imagem/img1.png)

As regras de validação e das ações (renomeio, cópia, backup, etc) deverão ser armazenadas em um ou mais arquivos de configuração.

### Características Gerais

* Renomeio de arquivo(s)
* Cópia para múltiplos diretórios
* Conversão de formato texto (Unix/Dos)
* Validação do nome do arquivo por expressão regular
* Remoção do arquivo por data do último acesso
* Execução de processo (.BAT, .EXE, etc...)
* Registro de log das ações realizadas
* Geração de timestamp com data e hora do computador ou do arquivo
* Mapeamento dinâmico de recursos de rede
* Varredura de diretório e subdiretório
* Validação de diretório por expressão regular
* Conversão maiúscula e minúscula do nome do arquivo

## Glossário

**E**

**Endereço IP**
Este endereço é um número único para cada computador conectado a Internet, composto por uma sequência de 4 números que variam de 0 até 255, separados por “.”.

**F**

_**Firewall**_
Dispositivo constituído pela combinação de software e hardware, utilizado para dividir e controlar o acesso entre redes de computadores.

**H**

**HTTP**
Do Inglês _**H**yper**T**ext **T**ransfer **P**rotocol_. Protocolo usado para transferir páginas _Web_ entre um servidor e um cliente, por exemplo, o _browser_.

**I**

**ISDN**
O ISDN (Integrated Services Digital Network) é um sistema de conexões de telefone digital.

**L**
_**Log**_
Registro de atividades por programas de computador. No caso de logs relativos a incidentes de segurança, eles normalmente são gerados por _firewalls_ ou por IDSs.

**M**

**Macro**
É sinônimo para um grupo de instruções que pode ser usado como uma instrução ao longo do código-fonte.

**P**

**Protocolo OFTP (ODETTE File Transfer Protocol)**
O OFTP foi primeiramente especificado com premissas do modelo interconexão de sistemas abertos (OSI) utilizando o serviço de rede recomendado pela norma CCITT X.25.
Com o crescimento da utilização do OFTP por diferentes setores, a organização ODETTE ampliou o escopo de padronização e incorporou a utilização do protocolo TCP/IP.

**PPP**
O PPP (Point-to-Point Protocol) é o método mais usado para transportar pacotes do IP sobre uma ligação de série entre o usuário e a Internet Service Provider (ISP).

**R**

**RAS**
Um protocolo para configuração de uma VPN.

**S**

**Scan**
Técnica normalmente implementada por um tipo de programa, projetado para efetuar varreduras em redes de computadores.

**SMM**
System Management Module (Módulo de Gerenciamento de Sistema).

**SSL**
Do Inglês _**S**ecure **S**ockets **L**ayer_. Protocolo que fornece confidencialidade e integridade na comunicação entre um cliente e um servidor, através do uso de criptografia.

**U**

**UNC**
Este é um formato de nome de arquivo que é usado para especificar a localização dos arquivos, pastas e recursos na rede local (LAN).

**V**

**VPN**
É uma rede de comunicação privada normalmente utilizada por uma empresa ou um conjunto de empresas e/ou instituições, construída em cima de uma rede de comunicação pública, por exemplo, a Internet.

## Referências

Disponível em: (<http://www.tech-faq.com/lang/pt/ppp.shtml>). *Acesso em: 20 de julho de 2007*
<br>
Disponível em: (<http://cartilha.cert.br/glossario/>). *Acesso em: 20 de julho de 2007*
<br>
Disponível em: (<http://www.iwebtool.com/what_is_unc.html>). *Acesso em: 20 de julho de 2007*

