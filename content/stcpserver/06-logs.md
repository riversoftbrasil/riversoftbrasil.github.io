---
linkTitle: Logs
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 6
prev: /stcpserver/04-console
next: 
draft: false
slug: logs
lastmod: 2025-02-01
---

## Arquivos de logs

Os logs do STCP OFTP estão divididos em duas categorias:

### Logs do Sistema

Disponíveis na pasta **Log** do diretório de instalação do STCP OFTP Server (Ex. C:\STCPODT\Log) e são criados diariamente. Registram as informações referentes aos eventos do **SISTEMA**.

- Início/Fim do STCP OFTP;
- Início/Fim de Execução de Comando Externo;
- Início e Término da Agenda;
- Erros do Sistema em geral.
  
A nomenclatura dos arquivos de log, segue o padrão abaixo:

{{< filetree/container >}}
  {{< filetree/folder name="Log" >}}
    {{< filetree/file name="YYYYMMDD.log.txt" >}}
    {{< filetree/file name="YYYYMMDD.msg.txt" >}}   
  {{< /filetree/folder >}}
{{< /filetree/container >}}


### Logs da Comunicação

Disponíveis na pasta Log do usuário registrado na aplicação (Ex. C:\STCPODT\NOME-USUARIO\LOG), também são criados diariamente. Registram as informações referentes aos eventos do processo de transferências de um determinado usuário. Cada usuário, registrado no sistema (guia Usuários), possui uma pasta Log correspondente.

- Os eventos listados nestes arquivos podem ser:
- Início/Fim de Conexão Entrante ou Sainte;
- Início/Fim de Sessão;
- Início/Fim de Transmissão ou Recepção de arquivos;
- Erros no processo de transferência.
  
A nomenclatura dos arquivos de log, segue o padrão abaixo:

{{< filetree/container >}}
  {{< filetree/folder name="LOG" >}}
    {{< filetree/file name="YYYYMMDD.NOME-USUARIO.msg.txt" >}}
  {{< /filetree/folder >}}
{{< /filetree/container >}}

## Ativar logs em formato JSON

> [!NOTE] Nota
> Funcionalidade disponível a paritr da versão **5.3.16.0** do STCP OFTP Server Enterprise.

Quando o parâmetro AuditTxtEnabled é ativado (AuditTxtEnabled=1), o STCP, além de registrar os logs de transferência e auditoria no banco de dados, criará um arquivo de texto diário em formato JSON com esses registros.

Esse arquivo pode ser facilmente consumido por aplicações de monitoramento já em uso, aprimorando a observabilidade e contribuindo para a melhoria contínua da infraestrutura e a segurança dos processos de transferência de arquivos.

Além disso, esse tipo de integração, também nos permite detectar, diagnosticar e resolver problemas de forma proativa, oferecendo visibilidade completa sobre a integridade e o desempenho do ambiente STCP.

O arquivo de texto (JSON) será criado no diretório de log configurado (Ex. C:\STCPODT\Log) e com a nomenclatura: audit-YYYYMMDD.log.txt. Cada entrada no arquivo contém informações detalhadas sobre os eventos, incluindo data, tipo de evento, usuário, status da transmissão,
nome do arquivo, e outros detalhes relevantes.

``` md
# Exemplo de caminho e nomenclatura do arquivo:

C:\STCPODT\Log\audit-YYYYMMDD.log.txt

Onde:
YYYY: Ano em quatro dígitos.
MM: Mês em dois dígitos.
DD: Dia em dois dígitos.
```

### Configuração

O procedimento para ativar a geração de logs de transferência e auditoria em arquivo texto (JSON) é bastante simples. Siga os passos abaixo para ativar a funcionalidade.

1. Pare o [serviço](/stcpserver/utilizacao/#serviço-do-stcp-oftp-server) do STCP OFTP Server. 
2. Abra o arquivo de configuração CTCP.INI (Ex. C:\STCPODT\CTCP.INI).
3. Na seção *[Log]*, adicione ou edite o parâmetro:

```ini
[Log]
AuditTxtEnabled=1
```

4. Salve as alterações no arquivo.
5. Inicie o serviço STCP OFTP Server.

### Estrutura do arquivo texto (JSON)

A estrutura do arquivo criado segue o modelo descrito abaixo, contendo informações
detalhadas sobre os eventos de transferência e auditoria:

| **CHAVE**   | **TIPO**  | **COMENTÁRIOS**                                                                                      |
|-------------|-----------|----------------------------------------------------------------------------------------------------|
| **DATE**    | STRING    | Data e hora da ocorrência                                                                          |
| **EVENT**   | INTEGER   | Código da operação realizada:                                                                      |
|             |           | 0 – Início de sessão entrante                                                                      |
|             |           | 1 – Fim de sessão entrante                                                                         |
|             |           | 2 – Início de sessão de saída                                                                      |
|             |           | 3 – Fim de sessão de saída                                                                         |
|             |           | 4 – Início de transmissão do arquivo                                                              |
|             |           | 5 – Fim de transmissão do arquivo                                                                 |
|             |           | 6 – Início de recepção do arquivo                                                                 |
|             |           | 7 – Fim de recepção do arquivo                                                                     |
|             |           | 8 – Roteamento de arquivo (STCPREN)                                                               |
| **USER**    | STRING    | Nome do usuário (caixa postal) ou Módulo                                                           |
| **NETWORK** | STRING    | Rede/Função utilizada pelo STCP                                                                    |
| **PROC_ID** | INTEGER   | Código do processo                                                                                 |
| **THREAD_ID**| INTEGER  | Código do processo executado (Thread)                                                              |


<br>

| **Chave**             | **Tipo**    | **Comentários**                                                                                  |
|-----------------------|-------------|--------------------------------------------------------------------------------------------------|
| **RESULT**            | INTEGER     | Código de retorno do processo (Return Code): 0 - Sucesso                                                      |
| **FILE_LENGTH**       | INTEGER     | Tamanho do arquivo (bytes)                                                                       |
| **FILE_NAME**         | STRING      | Nome do arquivo                                                                                  |
| **MSG**               | STRING      | Mensagem do sistema                                                                              |
| **INFO**              | STRING      | Informações do sistema                                                                           |
| **FILE_RECORD_TYPE**  | STRING      | Formato do registro (RECFM)                                                                      |
| **FILE_RECORD_LENGTH**| INTEGER     | Quantidade de caracteres (bytes) que compõem o registro Fixo ou Variável (LRECL)                 |
| **FILE_DATE**         | STRING      | Data do arquivo                                                                                  |
| **FILE_TIME**         | STRING      | Hora do arquivo                                                                                  |

### Exemplo do arquivo texto (JSON) 

```json {filename="audit-20250110.log.txt"}
 {
 "date": "20250110153542581",
 "event": 0,
 "user": "02USER",
 "network": "TCPIP_1",
 "proc_id": 10084,
 "thread_id": 8752,
 "result": 0,
 "file_length": 0,
 "file_name": "",
 "msg": "Inicio de sessao remota",
 "info": "[TCP-oSSL] R:192.168.0.35:63271 L:192.168.0.100:6619",
 "file_record_type": "",
 "file_record_length": 0,
 "file_date": "",
 "file_time": ""
}
```