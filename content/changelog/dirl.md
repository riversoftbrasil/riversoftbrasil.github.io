---
toc: false
layout: notas
sidebar:
  exclude: true
---
## STCP Directlink

### {{< icon "clock" >}} &nbsp;  Versão 6.9.9 (lançada em outubro de 2024)

- Correção do nome do campo controle LOGIN_TOTP_SECRET para LOGIN_OTP_SECRET na tabela AUTHENTICATIONS do banco de dados de configuração do STCP Gemini.
- Correção do problema relacionado ao parâmetro TCPSSLCipher que impedia a conexão com servidor ao utilizar o protocolo SFTP.
- Correção de falha na recepção de arquivos via SFTP Client utilizando o DirectLink em Linux, onde a conexão era encerrada quando um arquivo era bloqueado pelo filtro de arquivos.
- Melhorias no tratamento de espaços em branco nas chaves autorizadas.
- Correção do problema da chave com senha na interface da API.
- Correção do problema de exibição do certificado no handshake TLS ao testar a conectividade da rede de supervisão.

### {{< icon "clock" >}} &nbsp;  Versão 6.5.16 (lançada em abril de 2024)

- Correção do problema que gerava erro de validação no upload de arquivo (API) quando era utilizado mais de um e-mail e com espaços em branco.

### {{< icon "clock" >}} &nbsp;  Versão 6.5.12 (lançada em janeiro de 2024)

- Correção da vulnerabilidade SSH Terrapin Truncation Weakness (CVE-2023-48795) na interface SFTP.
- Implementação da possibilidade de configuração dos algoritmos de criptografia e MAC na interface SFTP.

### {{< icon "clock" >}} &nbsp;  Versão 6.5.8 (lançada em setembro de 2023)

- Correção da vulnerabilidade SSH Weak MAC Algorithms na interface SFTP.
- Correção do problema que ocultava o botão de envio quando as opções do formulário estavam desabilitadas no portal.

### {{< icon "clock" >}} &nbsp;  Versão 6.5.7 (lançada em agosto de 2023)

- Implementação da validação da requisição http/s que verifica se o host e a uri configurada são iguais (Unvalidated Redirection).
- Melhorias no tratamento de host no diretório estático.
- Correção do problema com o SecureLink que ficava inválido quando o timezone era referenciado com +XXX.

### {{< icon "clock" >}} &nbsp;  Versão 6.5.6 (lançada em agosto de 2023)

- Correção do problema que gerava o erro 400 no envio do SecureLink.
- Implementação da autenticação de acesso a um bucket AWS S3 por meio de RolesAnywhere.
- Correção da mensagem de erro de conexão a um bucket AWS S3 que mostrava ClientAzBlobConnection ao invés de ClientBlobConnection.
- Correção do do parâmetro endpoint em um bucket AWS S3 que apresentava problemas de acesso quando utilizado um S3 privado.
- Implementação do backup na interface do client blob.
- Melhorias no tratamento dos parâmetros do agendamento quando existe uma agenda aguardando execução.

### {{< icon "clock" >}} &nbsp;  Versão 6.5.4 (lançada em abril de 2023)

- Correção do problema em que a aplicação era interrompida quando executada com no modo noservice (Windows).
- Melhorias na sincronização de acesso aos arquivos de configuração do STCP no Windows.
- Correção do nome do parâmetro de configuração MaxReadirEntries para MaxReadDirEntries.
- Correção do problema reacionado ao arquivo que era criado mesmo quando existia um filtro na recepção que bloqueava a recepção (SFTP).
- Melhorias no controle de lock em arquivo (padrão STCPGemini).
- Implementação do controle de lock em memória.
- Melhorias no tratamento de escape da query string da url de logout na interface de SSO.
- Melhorias no tratamento do tipo de sistema operacional OSType gerava problemas no Windows.
- Melhorias no processo de agendamento já em execução quando os parâmteros da agenda são alterados
- Correção do processo de agendamento por data e intervalo que apresentava erro quando o dia da semana não estava setado (somente Windows).

### {{< icon "clock" >}} &nbsp;  Versão 6.3.0 (lançada em março de 2023)

- Implementação do suporte nativo para Bucket Oracle Cloud (object_storage).
- Implementação do comando de supervisão para leitura das informações do usuário.
- Implementação interface de monitoração no padrão do STCPGemini.
- Criação do parâmetro de configuração (config.json) para ApplDir e ApplLockDir.
- Criação do parâmetro de configuração (config.json) ApplPidFile.
- Alteração do nome do parâmetro de configuração (config.json) AppSecret para ApplSecret.
- Suporte para acesso às chaves (segredos) no cofre do OCI KMS (Secrets Manager).
- Suporte para acesso às chaves (segredos) no cofre do Azure KMS (Key Vault).
- Suporte para acesso às chaves (segredos) no cofre do AWS KMS (Secrets Manager).
- Suporte para acesso às chaves (segredos) no cofre do GCP KMS (Secrets Manager).

### {{< icon "clock" >}} &nbsp;  Versão 5.0.1 (lançada em novembro de 2022)

- Correção do tratamento do parâmetro idCodeProfile que apresentava erro quando estava em branco na configuração do usuário (Windows).
- Ajustes na mensagem de expiração do token para leitura do Pin.

### {{< icon "clock" >}} &nbsp;  Versão 5.0.0 (lançada em outubro de 2022)

- Correção do problema em que a transferência não era iniciada quando o agendamento estava marcado para Transmissão com recepção (Windows).
- Correção do problema relacionado à gravação da mensagem de log para fim de transferência pela API.
- Implementação do suporte ao módulo para acesso ao serviço de armazenamento de Blobs do Azure.

### {{< icon "clock" >}} &nbsp;  Versão 4.0.4 (lançada em outubro de 2022)

- Correção da mensagem de log no fim da transferência com erro pela API que não estava sendo gravada.
- Correção dois nome do arquivo no SFTP que estva com dois separadores de diretório
  (Exemplo: D:\STCPODT\DADOS\/USER1/ENTRADA/TESTE.TXT).
- Melhorias e ajustes do layout para Mobile [Flutter].
- Correção dos templates de notificação/páginas que não estavam sendo acessados corretamente.
- Melhorias na exibição da mensagem de retorno para os eventos de erro sem detalhes do problema. Para um detalhamento maior, deverá se\* acessado o portal do STCP Admin para identificar a causa do erro [PENTEST].
- Ofuscação dos arquivos javascript [PENTEST].
- Correção do problema em que a aplicação era interrompia quando não localizava os tipos de arquivos global e de usuário.
- Correção dos parâmetros de execução de comando externo.

### {{< icon "clock" >}} &nbsp;  Versão 3.7.6 (lançada em outubro de 2022)

- Melhorias e ajustes do layout para Mobile [Flutter].
- Correção dos templates de notificação/páginas que não estavam sendo acessados corretamente.
- Correção do problema em que a aplicação era interrompia quando não localizava os tipos de arquivos global e de usuário.
- Correção dos parâmetros de execução de comando externo.
