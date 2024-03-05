---
linkTitle: Arquivos de log
slug: arquivos-log
weight: 2
---
# Arquivos de log

Os logs do STCP OFTP estão divididos em duas categorias:

## **Logs do Sistema**

Disponíveis na pasta _Log_ do diretório de instalação do _STCP OFTP Server_ (Ex. C:\STCPODT\Log) e são criados
diariamente. Registram as informações referentes aos eventos do SISTEMA.

* Início/Fim do STCP OFTP;
* Início/Fim de Execução de Comando Externo;
* Início e Término da Agenda;
* Erros do Sistema em geral.

A nomenclatura dos arquivos de log, segue o padrão abaixo:

**YYYYMMDD.log.txt**
**YYYYMMDD.msg.txt**

----
## **Logs da Comunicação**

Disponíveis na pasta _Log_ do usuário registrado na aplicação (Ex. C:\STCPODT\NOME-USUARIO\LOG), também são criados diariamente . Registram as informações referentes aos eventos do processo de transferências de um determinado usuário. Cada usuário, registrado no sistema (guia _Usuários_), possui uma pasta _Log_ correspondente.

* Os eventos listados nestes arquivos podem ser:
* Início/Fim de Conexão Entrante ou Sainte;
* Início/Fim de Sessão;
* Início/Fim de Transmissão ou Recepção de arquivos;
* Erros no processo de transferência.

A nomenclatura dos arquivos de log, segue o padrão abaixo:

**YYYYMMDD.NOME-USUARIO.msg.txt**
