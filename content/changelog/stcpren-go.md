---
toc: false
layout: notas
sidebar:
  exclude: true
---

## STCP Gemini Rename

#### {{< icon "clock" >}} &nbsp;  Versão 2.0.1 (lançada em março de 2025)

-  Implementação do acesso ao banco de dados para utilização de regras de roteamento.
-  Implementação da leitura dos parâmetros da instância a partir do arquivo JSON local.
-  Melhoria na estrutura da gravação de log local em arquivo texto.
-  Implementação de gravação do log em arquivo texto, conforme utilizado no Windows.
-  Implementação de funções de acesso às configurações no banco de dados.
-  Implementação dos tipos de configuração para a entidade STCPREN (ROUTINGS).
-  Implementação do arquivo de criação da tabela "ROUTINGS" no banco de dados.
-  Implementação da opção para geração do arquivo de regras, localmente, com as informações gravadas no banco de dados.

#### {{< icon "clock" >}} &nbsp;  Versão 1.0.7 (lançada em outubro de 2024)

- Correção do problema ao processar parâmetros com aspas duplas e simples, garantindo o parsing correto na linha de comando.
- Melhorias na execução automática do comando externo, configurado no parâmetro ExecProgError. 
- Melhorias nas mensagens de log da execução com sucesso, dos comandos externos configurados nos parâmetros ExecProg e ExecProgAfter.
- Correção para o erro que impedia a varredura adequada de arquivos quando um nome era especificado na linha de comando e o parâmetro ScanDir estava configurado no arquivo de regras.
- Melhorias na localização dos diretórios dos arquivos de configuração e de mensagens.
- Melhorias no tratamento do parâmetro applPidFile no arquivo config.json, que agora é opcional.
- Redefinição dos níveis de mensagens de inicialização da aplicação, que foram ajustados para 8.
- Correção do problema que abortava a execução da aplicação quando era informado o nome de arquivo na linha de comando.