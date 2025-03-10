---
toc: false
breadcrumbs: false
slug: stcp-windows
---
## STCP OFTP Server e STCP OFTP Client

#### {{< icon "clock" >}} &nbsp;  Versão 5.3.18.0 (lançada em novembro de 2024)

- Implementação do suporte para o uso de proxies HTTP (Basic, NTLM, Digest, None) e SOCKS (SOCKS4 e SOCKS5) em conexões que utilizem o protocolo SFTP.
- Implementação do suporte para definir o endereço da interface de rede local utilizada em conexões de saída pelos protocolos SFTP e FTP.

#### {{< icon "clock" >}} &nbsp;  Versão 5.3.16.0 (lançada em agosto de 2024)

- Implementação da opção na biblioteca de log ODBC para gravar os dados de auditoria da tabela TBLTRANSFERS tanto no banco de dados quanto em um arquivo texto (JSON).
- Atualização das bibliotecas de segurança TLS (Openssl 3.3.1).

#### {{< icon "clock" >}} &nbsp;  Versão 5.3.15.0 (lançada em maio de 2024)

- Correção do problema que apagava o lock de conexão do usuário, durante uma transferência de arquivos, após o Tempo máximo de lock configurado ser atingindo.
- Correção do problema que impedia a definição correta dos períodos de início e fim de conexão ao configurar uma agenda através do STCP OFTP Server Config.

#### {{< icon "clock" >}} &nbsp;  Versão 5.3.14.0 (lançada em fevereiro de 2024)

- Melhorias no processo de cancelamento da conexão ao utilizar os protocolos OFTP, SFTP, FTP e FTPS.
- Implementação do parâmetro MaxBufSize no protocolo SFTP.
- Correção do problema que gerava o erro de código 22902 no envio do arquivo quando utilizado o protocolo FTPS.
- Correção do problema que gerava o erro de código 411 nas transferências de arquivos com tamanho maior que 2GB, utilizando o protocolo FTP/FTPS e quando com opção ‘Verificar tamanho’ marcada como ‘Sim’.
- Correção do problema que impedia o fim da conexão (Server x Server) ao utilizar o protocolo OFTP, encerrando o processo de comunicação somente por timeout.
- Atualização das bibliotecas de uso geral.

#### {{< icon "clock" >}} &nbsp;  Versão 5.3.12.0 (lançada em agosto de 2023)

- Implementação do parâmetro SendTokenIdGlobal, no STCP (versão client) para envio do TokenID/Hash e versão do agente de maneira global (não vinculado a um perfil específico).
- Implementação do backup de arquivo no configurador do STCP ao utilizar o serviço de armazenamento de objetos (Amazon S3 e Blobs do Microsoft Azure).
- Melhorias na biblioteca de segurança (APIOSSL.DLL) para validação da cadeia de certificação completa ao utilizar um certificado CA na interface de rede com comunicação segura (TLS).

#### {{< icon "clock" >}} &nbsp;  Versão 5.3.11.0 (lançada em maio de 2023)

- Correção do problema relacionado à queda do serviço do STCP ao ativar uma conexão HTTP.
- Melhorias nas bibliotecas de log ODBC para suporte a nomes de usuários com mais de 25 caracteres (stcplogodbcv2.dll).
- Alteração do tamanho do nome do usuário na guia Agendamento do configurador do STCP.
- Correção do problema que gerava erro na recepção do arquivo quando o servidor remoto (SFTP) não suporta o comando FXPSTAT.

#### {{< icon "clock" >}} &nbsp;  Versão 5.3.10.0 (lançada em janeiro de 2023)

- Correção do nome do parâmetro de configuração SftpMaxReadDirEntries no STCP OFTP Server Config.

#### {{< icon "clock" >}} &nbsp;  Versão 5.3.9.0 (lançada em janeiro de 2023)

- Correção do problema que gerava erro no download do arquivo, onde a aplicação inseria uma “/” adicional
  no início do path, quando utilizado o protocolo SFTP

#### {{< icon "clock" >}} &nbsp;  Versão 5.3.8.0 (lançada em outubro de 2022)

- Implementação do suporte ao módulo para acesso ao serviço de armazenamento de Blobs do Azure.

#### {{< icon "clock" >}} &nbsp;  Versão 5.3.7.0 (lançada em setembro de 2022)

- Atualização das bibliotecas de segurança TLS (Openssl 3.0.5).
- Configuração dos serviços de rede API DirectLink e SFTP DireckLink a partir do STCP OFTP Server Config.

#### {{< icon "clock" >}} &nbsp;  Versão 5.3.6.1 (lançada em junho de 2022)

- Alteração das mensagens (labels) SSL para TLS.
- Melhorias na exibição das informações de interfaces para conexão automática.

#### {{< icon "clock" >}} &nbsp;  Versão 5.3.6.0 (lançada em abril de 2022)

- Implementação do suporte ao módulo para acesso ao serviço de armazenamento de objetos (Amazon S3).
- Implementação do controle de agenda para o STCP DirectLink.
- Correção do problema relacionado à queda do serviço do STCP nos casos em que o tamanho do nome do arquivo ultrapassava 128 caracteres (Buffer Overflow), quando utilizado os protocolos SFTP e FTP.
- Correção do tratamento do uso de aspas simples na configuração de diretório do FTP, no configurador do STCP.
- Correção do tratamento do separador de diretório na configuração do FTP, no configurador do STCP.
- Correção do tratamento do modo ASCII/BINARY na interface do protocolo FTP.
- Correção do problema em que o evento MSG0022 (tamanho excedido) não era registrado em log no envio dos arquivos com mais de 255 caracteres no nome.
- Melhorias no tratamento de semáforas da interface de log ODBC (stcplogodbc.dll)

#### {{< icon "clock" >}} &nbsp;  Versão 5.3.4.0 (lançada em setembro de 2021)

- Correção do problema referente ao aumento do consumo de memória.
- Correção do erro MSG0013 (PENDENTE) referente a transmissão de arquivos quando utilizadas múltiplas sessões de transferência do usuário.
- Correção do problema referente a queda do serviço (ctcpsvc.exe) na recepção de arquivos com mais de 255 caracteres.
- Atualização das bibliotecas de segurança TLS (Openssl 1.1.1l).
- Atualização das bibliotecas de uso geral (PCRE 8.45, ZLib 1.2.11, Chilkat Libs 9.5.0.88).

#### {{< icon "clock" >}} &nbsp;  Versão 5.3.1.0 (lançada em abril de 2021)

- Atualização das bibliotecas de segurança TLS (Openssl).
- Implementação do suporte para comunicação com Mainframe através do protocolo FTP.
- Implementação dos parâmetros FTPDownloadCheckSizeDisabled, FTPDownloadType (ASCII/Binário) e FTPDirSeparator no módulo de configuração do STCP.
- Aumento do número máximo de caracteres do campo Algoritmos nas propriedades de rede.

#### {{< icon "clock" >}} &nbsp;  Versão 5.2.4.0 (lançada em agosto de 2020)

- Aumento do número de caracteres nos campos senha da chave privada para SFTP e FTP.
- Aumento do número máximo de caracteres nos campos FTP ID e SFTP ID.
- Implementação dos parâmetros para sincronização da execução de comandos externos para os tipos de arquivos.
- Melhoria na exibição de mensagem de confirmação do EERP.
- Atualização das bibliotecas de segurança SSL/TLS (Openssl).
- Atualização das bibliotecas da interface de comunicação do protocolo OFTP.

#### {{< icon "clock" >}} &nbsp;  Versão 5.2.1.0 (lançada em maio de 2020)

- Suporte ao comando quote na interface de comunicação do protocolo FTP.
- Melhorias nas funções de Download e Upload nas interfaces dos protocolos FTP e SFTP.
- Melhorias no tratamento e registro de mensagens de log nas interfaces dos protocolos FTP e SFTP

#### {{< icon "clock" >}} &nbsp;  Versão 5.2.0.0 (lançada em abril de 2020)

- Atualização das bibliotecas da interface de comunicação do protocolo OFTP.
- Atualização das bibliotecas de segurança SSL/TLS (Openssl).
- Atualização das bibliotecas da interface de comunicação dos protocolos SFTP e FTP.
- Correção do problema relacionado à queda do serviço do STCP quando utilizado os protocolos SFTP e FTP, onde o erro ocorria quando os diretórios de download ou upload eram configurados sem a barra (/) no final.

#### {{< icon "clock" >}} &nbsp;  Versão 5.1.2.1 (lançada em maio de 2019)

- Melhorias no controle relacionado ao tempo de inatividade da conexão (TIMEOUT) nas interfaces dos protocolos FTP e SFTP.
- Implementação do parâmetro MLSD para habilitar ou não o uso do comando MLSD na listagem de diretórios em um servidor remoto FTP/FTPS compatível. Esta propriedade é verdadeira (MLSD = 0) por padrão.
- Melhorias na função de recuperação do tamanho do arquivo ao realizar o download em um servidor remoto SFTP/FTP/FTPS.
- Atualização das bibliotecas de segurança SSL/TLS (Openssl)

#### {{< icon "clock" >}} &nbsp;  Versão 5.1.2.0 (lançada em julho de 2018)

- Melhorias na interface de conexão utilizando o protocolo FTP e FTPS quando o servidor está configurado atrás de um NAT.

#### {{< icon "clock" >}} &nbsp;  Versão 5.1.1.0 (lançada em junho de 2018)

- Implementação da funcionalidade de “whitelist” (@) e “blacklist” (!) na função de máscara de arquivos para os protocolos SFTP, FTP e FTPS.
- Implementação da sincronização de execução dos processos externos após a transmissão com sucesso.
  CommandLineTXWait = 1 (Sync) ou 0 (Async)
- Implementação da sincronização de execução dos processos externos após a recepção com sucesso.
  CommandLineRXWait = 1 (Sync) ou 0 (Async)

#### {{< icon "clock" >}} &nbsp;  Versão 5.1.0.0 (lançada em novembro de 2017)

- Melhorias na interface stcpmon relacionadas ao retorno dos dados da seção Control do arquivo de configuração do usuário.

#### {{< icon "clock" >}} &nbsp;  Versão 5.0.0.4 (lançada em setembro de 2017)

- Melhorias no módulo de controle de conexão do STCP OFTP Server que, em alguns casos, ao utilizar o protocolo SFTP impedia a liberação da conexão após a ocorrência de erros no processo de transferência.

#### {{< icon "clock" >}} &nbsp;  Versão 5.0.0.2 (lançada em maio de 2017)

- Melhorias no módulo STCPFileConv que agora permite o tratamento e conversão de arquivos com registros variáveis e com saída variável.
- Correção no módulo STCPUbbCad que impedia a gravação correta do endereço de e-mail no arquivo de configuração (INI) do usuário.

#### {{< icon "clock" >}} &nbsp;  Versão 5.0.0.1 (lançada em fevereiro de 2017)

- Melhorias no tratamento de problemas relacionados à insuficiência de recursos (sessões de transferências, threads, semáforas, memória e outros) que permite a realocação de recursos pelo STCP Server, a fim de manter a interface de conexão em LISTENING.
- Implementação da funcionalidade de “whitelist” (@) e “blacklist” (!) na função de filtro de arquivos.
- Melhorias no módulo para atualização automática de pacotes e bibliotecas utilizando o STCPUpdater.
- Implementação do parâmetro Controle de Atualização para habilitar o processo atualização automática utilizando o STCPUpdater.

#### {{< icon "clock" >}} &nbsp;  Versão 5.0.0.0 (lançada em dezembro de 2016)

- Desbloqueio do usuário com status “Locked” através do botão “Alterar senha”.
- Tamanho mínimo do arquivo no controle de transmissão e recepção de arquivos.
- Registro em log da versão do STCP quando o Hash é utilizado na conexão.
- Possibilidade de uso das tabelas de conversão tabela no módulo STCPFileConv.
- Módulo para atualização automática de pacotes e bibliotecas utilizando o STCPUpdater.
- Melhorias na função de filtro de arquivos onde a partir de agora o usuário pode indicar um arquivo externo com as expressões regulares desejadas para validação.
- Correção de um problema relacionado ao parâmetro “Destino” que era modificado ao utilizar a função de cópia do usuário através do configurador.
- Correção de um problema relacionado ao consumo elevado de memória.

#### {{< icon "clock" >}} &nbsp;  Versão 4.5.0.0 (lançada em dezembro de 2016)

- Correção de um problema relacionado à rotina de backup que armazenava o arquivo somente com nome Odette e não o nome do arquivo no diretório.
- Implementação do parâmetro “BackupRestoreTime=(0|1)” responsável por restaurar o arquivo da área de Backup do STCP, alterando o seu Timestamp externo (caso exista) e a data de modificação com a data atual do sistema.
- Suporte a opção “AutoFix” para conexões utilizando o protocolo FTPS em “Explicit Mode”.
- Melhorias no processo de recuperação do arquivo da área de “RESTART” do STCP após interrupção da transferência.
- Melhorias no processo de liberação da UCB (Unit Control Block) em casos em que a conexão permanecia ativa (travada) após alguma falha no processo de transferência.

#### {{< icon "clock" >}} &nbsp;  Versão 4.4.0.0 (lançada em setembro de 2015)

- Suporte aos protocolos de comunicação HTTP, FTP e SFTP, atuando como cliente para estes protocolos (somente na versão Enterprise).
- Compatibilidade com o XFB em conexões seguras SSL.
- Troca de parâmetros com outras aplicações ODETTE através do campo USERDATA (por Tipo de Arquivo).
- Suporte para criação de referência de arquivo recebido (recepção de arquivo).
- Enviar ID local do arquivo no campo USERDATA (transmissão arquivo).
- Validação de arquivos antes e depois da transmissão e/o recepção.
- Melhorias na configuração do controle de log da aplicação.
- Melhorias nas políticas de segurança do controle de autenticação.
- Controle de Token Id/ HASH.
- Interface de autenticação SO (Windows), STCP, SecurId/RSA, LDAP.
- Atualizações de segurança envolvendo os protocolos SSL e TLS (APIOSSL.DLL).
- Correção de um problema relacionado ao protocolo SFTP, que apresentava falha quando utilizado o método de autenticação Public Key & Password.
