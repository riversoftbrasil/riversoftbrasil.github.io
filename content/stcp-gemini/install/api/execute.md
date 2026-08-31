---
title: "Modos de execução"
weight: 30
toc: true
layout: docs
next: /stcp-gemini/install/portal/
---
## Modo de execução do STCP Gemini API
 
O STCP Gemini API pode ser executado como serviço (gerenciado pelo `systemd`) ou diretamente via linha de comando.
 
### Execução como serviço

Concluída a configuração, inicie o serviço através do comando abaixo:
 
```shell
systemctl start stcpgemini-api
```
 
Para verificar o status do serviço e confirmar que a mensagem `running` é exibida, execute:
 
```shell
systemctl status stcpgemini-api
```

### Execução via linha de comando
 
Além da execução como serviço, o STCP Gemini API também pode ser executado diretamente via linha de comando através do binário `stcprestapi`. Esse modo é útil, por exemplo, em ambientes containerizados, onde o processo precisa ser executado em primeiro plano (*foreground*) como processo principal do container.
 
```shell
stcprestapi -lite -p 33070
```
 
As opções disponíveis são:
 
| Flag | Tipo | Descrição |
| :--- | :--- | :--- |
| `-config` | string | Caminho do arquivo de configuração a ser utilizado. Se omitido, assume um caminho padrão relativo à instalação. |
| `-ns` | booleana | Desabilita a comunicação TLS (*no security*). Não deve ser combinada com `-c`/`-k`. |
| `-c` | string | Caminho do certificado TLS. Deve ser usada em conjunto com `-k` para habilitar TLS. |
| `-k` | string | Caminho da chave privada TLS. Deve ser usada em conjunto com `-c` para habilitar TLS. |
| `-kp` | string | Senha da chave privada TLS, quando aplicável. |
| `-h` | string | Endereço da interface de rede em que a API ficará escutando. |
| `-p` | int | Porta em que a API será exposta. |
| `-lite` | booleana | Habilita o modo *self serving* do Portal Gemini, no qual a própria API também disponibiliza os arquivos do Portal embutido. |
| `-webapp` | string | Diretório do Portal Gemini embutido, utilizado em conjunto com `-lite`. |
| `-init-db` | booleana | Inicializa a estrutura do banco de dados da API (tabelas e triggers). |
| `-init-db-file` | booleana | Inicializa a estrutura do banco de dados da API em arquivos. |
 
> [!WARNING]
> É necessário escolher entre desabilitar a comunicação segura (`-ns`) **ou** habilitar TLS informando `-c` e `-k` juntos. Não combine `-ns` com `-c`/`-k` na mesma execução.

> [!NOTE]
> **Nota:** As flags `-init-db` e `-init-db-file` inicializam a estrutura das bases de dados e não devem ser utilizadas em conjunto com a execução normal da API — utilize-as apenas durante o processo de instalação/configuração inicial.