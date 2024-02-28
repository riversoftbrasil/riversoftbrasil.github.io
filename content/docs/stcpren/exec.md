---
linkTitle: Execução
layout: docs
sidebar:
  exclude: false
weight: 3
prev:
next:
---
## Execução

### Linha de comando

```
stcpren_3_2.exe [opções]
```

[Opções] | Descrição
:---     | :---
**-log < arquivo de log>**| Define o nome do arquivo de configuração de log.
**-rules < arquivo de regras>**| Define o nome do arquivo de regras.
**-firstrule < número da regra>**| Define a primeira regra a ser processada.
**-scan < nome do diretório>**| Define o nome do diretório para varredura.
**-subdir**| Habilita a procura do subdiretório.
**-dirregex < regex>**| Define uma expressão regular para validar os subdiretórios que serão processados.
**-dirregexneg < regex>**| Define uma expressão regular para validar os subdiretórios que não serão processados.
**-fileregex < regex>**| Define uma expressão regular para validar os nomes de arquivos que serão processados.
**-fileregexneg < regex>**| Define uma expressão regular para validar os nomes de arquivos que não serão processados.
**-filelist < nome da lista>**| Define o nome do arquivo da lista de arquivos.
**-dirlist < nome da lista>**| Define o nome do arquivo de lista de diretórios.
**-scansemname < nome>**| Define um nome de semáfora para sincronização do modo de varredura. /Obs.: Utilizado para sincronizar a execução de múltiplos processos do STCPREN.
**-var(N) < valor>**| Define o valor da variável.
O índice (N) pode variar de 0 a 9.
