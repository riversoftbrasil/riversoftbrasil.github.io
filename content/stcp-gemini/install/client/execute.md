---
title: "Modos de execução"
weight: 30
toc: true
layout: docs
next: /stcp-gemini/api/
prev: /stcp-gemini/install/rename/config/
---

## Modo de execução do STCP Gemini Client

O STCP Gemini Client é executado através de linha de comando utilizando o arquivo de configuração preparado anteriormente.

Para iniciar uma execução, utilize:

```shell
stcpclient -p O0055NOMEPERFIL -r 1 /usr/local/stcpclient/configs/stcpclient.config.json
```

O parâmetro informado através da opção `-p` identifica o perfil que será utilizado durante a execução.

Substitua `O0055NOMEPERFIL` pelo nome do perfil configurado para o ambiente.

Após estabelecer a conexão com o servidor de destino, os arquivos disponíveis para envio são processados e novos arquivos disponibilizados pelo parceiro podem ser recebidos automaticamente. 

## Envio de arquivos

Os arquivos que serão enviados ao parceiro devem ser disponibilizados no diretório de saída correspondente ao perfil utilizado.

Por padrão, a estrutura é:

```text
/usr/local/stcpclient/data/STCPClt/<PERFIL>/SAIDA
```

Por exemplo:

```text
/usr/local/stcpclient/data/STCPClt/O0055NOMEPERFIL/SAIDA
```

Ao executar o STCP Gemini Client, todos os arquivos disponíveis no diretório `SAIDA` do perfil serão considerados para envio.

Após uma transferência concluída com sucesso, o arquivo é removido automaticamente do diretório de saída.

## Recebimento de arquivos

Os arquivos recebidos do servidor remoto são armazenados no diretório de entrada correspondente ao perfil utilizado.

Por padrão, a estrutura é:

```text
/usr/local/stcpclient/data/STCPClt/<PERFIL>/ENTRADA
```

Por exemplo:

```text
/usr/local/stcpclient/data/STCPClt/O0055NOMEPERFIL/ENTRADA
```

Os arquivos recebidos ficam disponíveis nesse diretório após a execução do STCP Gemini Client.

## Execução através do Cron

A execução do STCP Gemini Client pode ser automatizada através de ferramentas de agendamento do sistema operacional, como o `cron`.

Por exemplo:

```text
0 0 * * * /bin/bash -l -c \
  "PATH=\"$PATH:/usr/local/bin\"; \
  stcpclient -p O0055NOMEPERFIL \
  -r 1 \
  /usr/local/stcpclient/configs/stcpclient.config.json"
```

O exemplo acima executa o STCP Gemini Client diariamente à meia-noite utilizando o perfil `O0055NOMEPERFIL`.

> [!NOTE]
> Ajuste a periodicidade da execução de acordo com os requisitos operacionais do ambiente.

A execução automatizada através do Cron faz parte do fluxo descrito na documentação atual do produto.

## Arquivos de log

As operações realizadas pelo STCP Gemini Client são registradas em arquivos de log, incluindo eventos de inicialização, conexões, envio e recebimento de arquivos.

Por padrão, os logs são armazenados em:

```text
/usr/local/stcpclient/logs
```

Os registros podem ser utilizados para acompanhamento operacional, auditoria das transferências e análise de ocorrências.

### Exemplo de log

Abaixo é apresentado um exemplo de log gerado durante a execução do STCP Gemini Client:

```text
2021-05-05 14:04:00.006 /opt/atlassian/pipelines/agent/build/Appl/STCPAppl/src/stcpd.c:'444':'main':Service version:'STCPClient 6.3.2' init instance:'STCPClt'
2021-05-05 14:04:00.006 /opt/atlassian/pipelines/agent/build/Appl/STCPAppl/src/stcpd.c:'484':'main':Umask: oldmask'2' newmask:'22'
2021-05-05 14:04:00.006 /opt/atlassian/pipelines/agent/build/Appl/STCPAppl/src/stcpd.c:'552':'main':Service init instance:'STCPClt' RUID:'1000' (ec2-user) EUID:'1000' RGID:'1000' (ec2-user) EGID:'1000' Config: /usr/local/stcpclient/configs/stcpclient.config.json
2021-05-05 14:04:00.006 /opt/atlassian/pipelines/agent/build/Appl/STCPAppl/src/stcpd.c:'608':'main':Service Starting instance:'STCPClt'
2021-05-05 14:04:00.007 /opt/atlassian/pipelines/agent/build/Appl/STCPAppl/src/stcpd.c:'619':'main':Service Started instance:'STCPClt'
2021-05-05 14:04:00.007 STCPClt <STCPClient> [MSG0044] STCPClient - Inicio da instancia para 'STCPClt' - Versao 6.3.2
2021-05-05 14:04:00.007 STCPClt <STCPClient> [MSG0135] STCPClient - Numero de serie: 'F531C40E-A5D7-4A2E-A7A6-23A6143D36F5-9B6E' - OSTYPE: '0' - U: '1'
2021-05-05 14:04:00.007 STCPClt <STCPClient> [MSG0137] STCPClient - Biblioteca carregada tipo:'CFG' wrapper:'libstcpcfg.6.3.2' impl:'libstcpcfgjson.6.3.2'
2021-05-05 14:04:00.007 STCPClt <STCPClient> [MSG0137] STCPClient - Biblioteca carregada tipo:'LOG' wrapper:'libstcplog.6.3.2' impl:'libstcplogtxt.6.3.2'
2021-05-05 14:04:00.016 STCPClt O0055NOMEPERFIL [MSG0055] OUT - Inicio de conexao de saida
2021-05-05 14:04:00.021 STCPClt O0055NOMEPERFIL [MSG0035] OUT - Inicio de recepcao 'arquivo1.txt'
2021-05-05 14:04:00.027 STCPClt O0055NOMEPERFIL [MSG0039] OUT - Fim de recepcao com sucesso 'arquivo1.txt'
2021-05-05 14:04:00.030 STCPClt O0055NOMEPERFIL [MSG0159] OUT - Recepcao confirmada(EERP) com sucesso 'arquivo1.txt'
2021-05-05 14:04:00.034 STCPClt O0055NOMEPERFIL [MSG0065] OUT - Fim de conexao de saida
```

No exemplo, é possível acompanhar diferentes etapas da execução, como:

- Inicialização da aplicação;
- Arquivo de configuração utilizado;
- Versão do componente;
- Carregamento das bibliotecas;
- Perfil utilizado na comunicação;
- Estabelecimento e encerramento da conexão;
- Processamento do arquivo;
- Confirmação da transferência.

> [!NOTE]
> O conteúdo e o nível de detalhamento dos registros podem variar de acordo com a versão do STCP Gemini Client, a configuração do ambiente e o tipo de operação executada.

## Diretórios operacionais

A estrutura principal utilizada pelo STCP Gemini Client durante sua operação é:

```text
/usr/local/stcpclient/
├── configs/
│   └── stcpclient.config.json
├── data/
│   └── STCPClt/
│       └── <PERFIL>/
│           ├── ENTRADA/
│           └── SAIDA/
└── logs/
```

Os diretórios `ENTRADA`, `SAIDA` e `logs` são utilizados respectivamente para arquivos recebidos, arquivos destinados ao envio e registros operacionais da aplicação.