---
title: "STCP Gemini Rename"
# sidebar:
#   exclude: true
cascade:
  type: docs
weight: 35
next: /stcp-gemini/install/rename/install/
prev: /stcp-gemini/install/server/execute/
---
<!-- <meta http-equiv="refresh" content="0;url=overview/" /> -->

## O que é o STCP Gemini Rename?

{{< callout type="important" >}} 
O STCP Gemini Rename deve ser instalado no mesmo servidor ou na mesma imagem de container onde o STCP Gemini Server está instalado.
{{< /callout >}} 

O **STCP Gemini Rename (STCPRen)** é o componente da plataforma STCP Gemini responsável pelo **roteamento e automação de operações com arquivos**.

Por meio de **roteamentos e regras configuráveis**, o **STCP Gemini Rename (STCPRen)** identifica arquivos em uma origem, avalia os critérios definidos e determina as ações que serão aplicadas ao longo do fluxo até o destino correspondente.

As regras podem considerar informações como **nome do arquivo, diretório, origem e conteúdo**, permitindo executar ações como **renomeação, cópia, movimentação, geração de backup, distribuição para múltiplos destinos e acionamento de processos externos**.


## Instalação

Consulte a seção **[Instalação](install/)** para obter os procedimentos necessários para instalar o STCP Gemini Rename no ambiente.

## Configuração

Consulte a seção **[Configuração](config/)** para obter as orientações de configuração e preparação do componente para utilização.