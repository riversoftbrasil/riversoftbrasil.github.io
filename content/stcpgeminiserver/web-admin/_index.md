---
linkTitle: Web Admin
title: 
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: true
weight: 
prev: 
next: 
draft: 
lastmod: 2024-07-24
---

Nesta seção vamos detalhar as possibilidades de configuração do módulo Serviço Web Admin no
Portal Gemini.

## Módulo Serviço Web Admin

O Serviço Web Admin permite que o Operador realize as funções de Consulta dos cadastros no sistema como: Instâncias, Usuários, Transferência de Arquivos, tenha acesso a Relatórios de: Eventos, Frequência e Transferências, faça **Monitoração** de: Agendamentos, Instâncias e Usuários, além de possibilitar Manutenção de: Instâncias, Agendamentos, Operadores e Usuários.

![](img/image-01.png)

Além das funções descritas anteriormente há outras disponíveis, como Iniciar Conexões, e todas serão descritas a seguir.

{{< callout type="warning" >}}
  **AVISO:** Para que os recursos abordados por este manual funcionem corretamente é **NECESSÁRIO** que haja pelo menos um nó de monitoração criado e atribuído a um Serviço de **Monitoração da Instância**. Estas configurações podem ser consultadas nos Manuais dos Configuradores Web Admin e STCP.
{{< /callout >}}

## Menu Consulta

O Menu de consultas permite a visualização de todos os cadastros realizados no sistema. A divisão deste menu e dado por:

* Instâncias;
* Agendamentos;
* Usuários;
* Serviços;
* Código de Erros;
* Código de Eventos;
* Grupos;
* Operadores;
* Configurações API.

![](img/image-02.png)


### Instâncias

A **consulta de Instâncias** permite que o Operador visualize os principais parâmetros cadastrados para as Instâncias do sistema.

Para buscar por uma instância específica insira seu nome e, se desejar, sua descrição. 

![](img/image-03.png "Menu de Consulta no Portal")

Ao localizar a instância pesquisada, clique sobre seu nome.

![](img/image-04.png "Consulta de Instâncias")

A partir de então os parâmetros cadastrados serão listados como mostrado a seguir:

![](img/image-05.png "Guia Geral - Instâncias")
![](img/image-06.png "Guia Diretórios - Instâncias")
![](img/image-07.png "Guia Controles - Instâncias")
![](img/image-08.png "Guia Autenticação de Usuários - Instâncias")
![](img/image-09.png "Guia Log - Instâncias")

**Tabela de descrição de Nível do evento**

| Nível do evento   | Descrição |
| ----------- | ----------- |
|  0   | Os eventos de início e término da aplicação.  |
|  1   | Os eventos que contenham algum erro.         |
|  2   | Os eventos de término da operação de cancelamento de espera de uma conexão.   |
|  3   | Os eventos de início e término de cancelamento das conexões.                  |
|  4   | Os eventos de início e término de com sucesso, início e término de sessão, início e término de transmissão ou início e término de recepção.    |
|  5   | Não definido.        |
|  6   | Não definido.        |
|  7   | Os eventos de início e término da unidade de processamento (threads)        |
|  8   | Os eventos de início e término da agenda.         |


### Agendamentos

A consulta de Agendamentos permite que o Operador visualize os principais parâmetros cadastrados para os Agendamentos no sistema.

Para buscar por um agendamento específico, informe seu **Nome** e/ou **Descrição**. Após preencher o campos descrito, o agendamento cadastrado será listado conforme mostra a imagem.

![](img/image-10.png "Consultar Agendamentos")

Ao localizar o agendamento pesquisado, clique em **"Editar"**. A partir de então, os parâmetros cadastrados serão listados.

![](img/image-11.png "Guia Geral - Agendamentos")
![](img/image-12.png "Guia Agenda - Agendamentos")
![](img/image-13.png "Guia Transmissão/Recepção - Agendamentos")
![](img/image-14.png "Guia Comando Externo - Agendamentos")

### Usuários

A consulta de Usuários permite que o Operador visualize os principais parâmetros cadastrados para os usuários do sistema.

Para buscar por um usuário específico, informe seu **Nome** e/ou **Descrição**. Após preencher o campos descrito, o usuário cadastrado será listado conforme mostra a imagem.

![](img/image-15.png "Consultar Usuários")

Ao localizar o usuário pesquisado, clique sobre seu nome. A partir de então, os parâmetros cadastrados serão listados.

![](img/image-16.png "Verificar parâmetros - Usuários")
![](img/image-17.png "Guia Geral - Usuários")
![](img/image-18.png "Guia Características - Usuários")
![](img/image-19.png )
![](img/image-20.png "Guia Controles - Usuários")
![](img/image-21.png)
![](img/image-22.png)
![](img/image-23.png)
![](img/image-24.png)

### Redes 

A consulta de Redes permite que o Operador visualize os principais parâmetros cadastrados para os usuários do sistema.

Para buscar por uma rede específica, informe seu **Nome** e/ou **Descrição**. Após preencher o campos descrito, a rede cadastrada será listado conforme mostra a imagem.


![](img/image-25.png "Consultar Redes")
![](img/image-26.png "Guia Geral - Redes")
![](img/image-27.png "Guia OFTP - Redes")
![](img/image-28.png "Guia Comunicação - Redes")


### Código de Erros

A consulta de Código de erros permite que o Operador visualize os principais parâmetros cadastrados para os Códigos de erro do sistema.

Para buscar por um erro específico, pode-se informar seu **Código:** e/ou sua **Descrição**. Como não há nenhum parâmetro obrigatório para esta pesquisa, ao clicar em "Pesquisar..." sem preencher nenhuma informação, todos os erros serão apresentados.

Ao localizar o erro desejado, clique sobre seu Código. A partir de então, os parâmetros cadastrados serão listados.

![](img/image-29.png "Aba Códigos de Erros")


