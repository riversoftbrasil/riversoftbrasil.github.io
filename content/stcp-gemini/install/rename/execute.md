---
title: "Modos de execução"
weight: 30
toc: true
layout: docs
next: /stcp-gemini/api/
prev: /stcp-gemini/install/rename/config/
---
## Modo de execução do STCP Gemini Rename

O STCP Gemini Rename é um utilitário de linha de comando (CLI) e, diferente dos demais componentes da plataforma, não é executado como serviço gerenciado pelo `systemd`.

Para executar o STCP Gemini Rename utilizando o arquivo de configuração criado anteriormente, utilize:

```shell
stcpren -db -config /usr/local/stcpren/configs/config.json -rules <NOME-REGRA> -scan ""
```

A flag `-db` indica que a configuração de Roteamentos e Regras deve ser obtida a partir do banco de dados da plataforma (`cfgProvider` do tipo `stcpgeminidb`), conforme definido em `config.json`.

{{< callout type="info" >}} 
Os Roteamentos e Regras processados pelo STCP Gemini Rename são criados e mantidos através do STCP Gemini Portal. O detalhamento dessas opções está fora do escopo deste guia de instalação e será abordado no guia de uso do STCP Gemini Rename.
{{< /callout >}} 

### Opções disponíveis

O comando `stcpren` aceita as opções abaixo, utilizadas principalmente para sobrescrever ou testar comportamentos específicos de execução:

| Flag | Tipo | Descrição |
| :--- | :--- | :--- |
| `-config` | string | Caminho do arquivo de configuração (obrigatório). Padrão: `/usr/local/stcpren/configs/config.json`. |
| `-db` | booleana | Utiliza a configuração de Roteamentos e Regras a partir do banco de dados (`cfgProvider`). |
| `-ini` | string | Nome do arquivo de definição de rotas (*routing*), quando não utilizado o modo `-db`. |
| `-rules` | string | Nome do arquivo de definição de regras, quando não utilizado o modo `-db`. |
| `-src` | string | Nome de origem a ser processada. |
| `-dst` | string | Nome de destino a ser utilizado. |
| `-scan` | string | Nome do diretório de varredura. |
| `-subdir` | booleana | Habilita a busca em subdiretórios. |
| `-subdir2` | booleana | Habilita a busca no diretório e em subdiretórios. |
| `-nosubdir` | booleana | Desabilita a busca em subdiretórios. |
| `-dirregex` | string | Expressão regular utilizada para validar diretórios durante a varredura. |
| `-dirregexneg` | string | Expressão regular utilizada para excluir diretórios durante a varredura. |
| `-fileregex` | string | Expressão regular utilizada para validar arquivos durante a varredura. |
| `-fileregexneg` | string | Expressão regular utilizada para excluir arquivos durante a varredura. |
| `-copydir` | string | Diretório de cópia. |
| `-backupdir` | string | Diretório de backup. |
| `-filekey` | string | Chave de identificação do arquivo. |
| `-firstrule` | int | Primeira regra a ser considerada na pesquisa. |
| `-scansemname` | string | Nome do semáforo utilizado durante a varredura. |
| `-scansemoptions` | int | Opções do semáforo de varredura. |
| `-scansemtimeout` | int | Tempo limite (*timeout*) do semáforo de varredura. |
| `-nologevent` | booleana | Desabilita o log de eventos. |
| `-nologroute` | booleana | Desabilita o log de roteamento. |
| `-lang` | string | Idioma utilizado. Padrão: `ptb`. |
| `-langfile` | string | Arquivo de mensagens utilizado. Padrão: `/usr/local/stcpren/configs/messages.json`. |
| `-pid` | string | Nome do arquivo de PID. |
| `-errfile` | string | Redireciona a saída de erro (*stderr*) para um arquivo. |
| `-export` | string | Exporta a configuração armazenada no banco de dados. |
| `-test` | booleana | Testa a existência de uma definição de regra, sem executar o processamento. |
| `-var0` a `-var9` | string | Valores de variáveis customizadas, utilizados conforme definido nos Roteamentos e Regras. |
| `-v` | booleana | Exibe a versão do STCP Gemini Rename. |

Para consultar a versão instalada, execute:

```shell
stcpren -v
```

{{< callout type="info" >}} 
O STCP Gemini Rename (STCPRen) é executado sob demanda. Sua execução pode ser acionada por eventos configurados no STCP Gemini Portal, como início ou fim de conexão e recepção de arquivos no STCP Gemini Server ou STCP Directlink. Também é possível executar o STCPRen em horários ou intervalos definidos por meio de agendamentos.
{{< /callout >}} 