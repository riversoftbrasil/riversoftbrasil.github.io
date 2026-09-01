---
title: "Modos de execução"
weight: 30
toc: true
layout: docs
next: /stcp-gemini/install/rename/
prev: /stcp-gemini/install/server/config/
---
## Modo de execução do STCP Gemini Server
 
O STCP Gemini Server pode ser executado como serviço (gerenciado pelo `systemd`) ou diretamente via linha de comando.
 
### Execução como serviço
 
Concluída a configuração, inicie o serviço através do comando abaixo:
 
```shell
systemctl start stcpgemini-server
```
 
Para verificar o status do serviço e confirmar que a mensagem `running` é exibida, execute:
 
```shell
systemctl status stcpgemini-server
```

### Execução via linha de comando
 
Além da execução como serviço gerenciado pelo `systemd`, o STCP Gemini Server também pode ser executado diretamente via linha de comando, informando o arquivo de configuração da instância desejada. Esse modo é útil, por exemplo, em ambientes containerizados, onde o processo precisa ser executado em primeiro plano (*foreground*) como processo principal do container.
 
```shell
/usr/local/bin/stcpserver /usr/local/stcp/configs/stcpserver.config.json
```
 
O comando `stcpserver` também aceita opções que sobrescrevem os parâmetros equivalentes do arquivo de configuração:
 
```shell
usage: STCPServer [options]
```
 
| Opção | Descrição |
| :--- | :--- |
| `-i` | Nome da instância |
| `-U` | Nome do usuário para execução em modo daemon |
| `-G` | Nome do grupo para execução em modo daemon |
| `-D` | Diretório da aplicação |
| `-L` | Diretório de controle de lock |
| `-P` | Nome do arquivo de PID |
| `-M` | Valor de umask |
| `-F` | Força a execução em modo daemon |
| `-C` | Habilita o envio de mensagens ao console via syslog |
| `-s` | Palavra-chave (*passphrase*) para criptografar as senhas do arquivo de configuração |
| `-?` | Exibe a ajuda |

{{< callout type="info" >}} 
Em execuções via container, evite forçar o modo daemon (`-F`). Mantenha o processo em *foreground* para que o orquestrador (Docker, Kubernetes etc.) consiga monitorar corretamente o ciclo de vida do container.
{{< /callout >}} 