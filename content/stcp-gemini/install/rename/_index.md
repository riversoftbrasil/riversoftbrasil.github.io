---
title: "STCP Gemini Rename"
# sidebar:
#   exclude: true
cascade:
  type: docs
weight: 35
next: /stcp-gemini/install/rename/install/
prev: /stcp-gemini/install/server/modules/
---
<!-- <meta http-equiv="refresh" content="0;url=overview/" /> -->

## O que é o STCP Gemini Rename?

> [!IMPORTANT]
> O STCP Gemini Rename deve ser instalado no mesmo servidor ou na mesma imagem de container onde o STCP Gemini Server está instalado.

O **STCP Gemini Rename (STCPRen)** é o módulo da plataforma STCP Gemini responsável pela automação e gerenciamento de fluxos de arquivos.

Por meio de roteamentos e regras, o componente identifica, valida e processa arquivos automaticamente, executando ações como renomeação, movimentação, cópia, backup e direcionamento até o destino definido.

Entre suas principais capacidades estão:

- Cópia e renomeação de arquivos;
- Criação de cópias de segurança;
- Validação através de expressões regulares;
- Validação com base no conteúdo dos arquivos;
- Cópia para múltiplos diretórios;
- Exploração de diretórios e subdiretórios;
- Auditoria dos processos executados;
- Execução de processos externos, como GPG, ZIP e UNZIP.

O processamento é organizado através de **Roteamentos** e **Regras**.

### Roteamentos

Os **Roteamentos** definem a origem dos arquivos e estabelecem as condições gerais de execução do processo de automação.

Eles representam a estrutura central da operação, reunindo e organizando as regras responsáveis por identificar os arquivos e determinar o processamento aplicável.

### Regras

As **Regras** definem as ações que serão executadas para cada arquivo identificado durante o processamento.

Quando o STCP Gemini Rename encontra um arquivo que atende aos critérios configurados em uma regra, as ações associadas são executadas automaticamente, como renomear, mover, copiar, realizar backup ou iniciar processos externos.

Em resumo, os **Roteamentos definem o contexto da operação**, enquanto as **Regras determinam o que deve ser feito com cada arquivo**.

## Instalação

Consulte a seção **[Instalação](install/)** para obter os procedimentos necessários para instalar o STCP Gemini Rename no ambiente.

## Configuração

Consulte a seção **[Configuração](config/)** para obter as orientações de configuração e preparação do componente para utilização.