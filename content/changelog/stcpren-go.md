---
toc: false
layout: notas
sidebar:
  exclude: true
---

## STCP Gemini Rename

#### {{< icon "clock" >}} &nbsp;  Versão 1.0.7 (lançada em outubro de 2024)

- Correção do problema ao processar parâmetros com aspas duplas e simples, garantindo o parsing correto na linha de comando.
- Melhorias na execução automática do comando externo, configurado no parâmetro ExecProgError. 
- Melhorias nas mensagens de log da execução com sucesso, dos comandos externos configurados nos parâmetros ExecProg e ExecProgAfter.
- Correção para o erro que impedia a varredura adequada de arquivos quando um nome era especificado na linha de comando e o parâmetro ScanDir estava configurado no arquivo de regras.
- Melhorias na localização dos diretórios dos arquivos de configuração e de mensagens.
- Melhorias no tratamento do parâmetro applPidFile no arquivo config.json, que agora é opcional.
- Redefinição dos níveis de mensagens de inicialização da aplicação, que foram ajustados para 8.
- Correção do problema que abortava a execução da aplicação quando era informado o nome de arquivo na linha de comando.