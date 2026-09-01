---
toc: false
breadcrumbs: false
excludeSearch: true
# aliases:
#   - /changelog/dirl/
slug: directlink
---
## STCP Directlink

### {{< icon "clock" >}} &nbsp;  Versão 8.1.4 (lançada em abril de 2026)

- Correção do tratamento do SFTP Server para chaves que não utilizam o algoritmo RSA.
- Correção do tratamento da formatação de diretórios no SFTP para operações de download.
- Correção do tratamento da formatação do nome do arquivo remoto nas comunicações via SFTP, FTP e Object Storage.
- Implementação das informações de recursos do Windows nas propriedades do arquivo executável.

### {{< icon "clock" >}} &nbsp;  Versão 8.1.3 (lançada em março de 2026)

- Correção do problema no timestamp das mensagens na console, que não apresentava a indicação de timezone.
- Correção do problema na identificação do primeiro acesso para novos usuários.
- Correção do comportamento do client FTP que removia o arquivo do servidor remoto mesmo com a opção de exclusão desabilitada.
- Correção de falha no envio de arquivos via SFTP Client para o AWS Transfer.
- Correção do problema em que a aplicação não era encerrada corretamente ao utilizar CTRL-C ou comando exit no modo console.
- Correção de erro de memória ao executar o comando CTRL-C.
- Implementação do módulo de comunicação FTP/FTPS.
- Implementação da integração do módulo FTP/FTPS ao STCP DirectLink.
- Implementação de integração com OpenTelemetry, com suporte a configuração de traces, métricas e logs na inicialização da aplicação.
- Implementação de autenticação 2FA no protocolo SFTP.
- Implementação de tratamento de MFA no serviço do SFTP Server.

### {{< icon "clock" >}} &nbsp;  Versão 8.0.10 (lançada em dezembro de 2025)

- Correção do comportamento de autenticação, passando a bloquear o acesso quando o domínio não estiver configurado no LDAP, evitando fallback indevido para autenticação via banco de dados.
- Correção do problema de falha no login ao utilizar autenticação LDAP.

### {{< icon "clock" >}} &nbsp;  Versão 8.0.9 (lançada em outubro de 2025)

- Correção do problema que causava a interrupção da aplicação em cenários com múltiplas comunicações SFTP.
- Correção do problema que causava a interrupção da aplicação no acesso simultâneo ao mapa de controle de transferência.
- Correção do problema no envio do link por e-mail em transferências via portal (upload).
- Implementação de opção para armazenamento dos eventos de debug em arquivo, em substituição à console ou ao Event Viewer.
- Implementação de opção de configuração para habilitar ou desabilitar a verificação da existência do bucket na comunicação S3.
- Implementação de opção de configuração para remoção do arquivo da pasta de entrada na recepção via API (upload) quando informado o usuário de destino no roteamento implícito.

### {{< icon "clock" >}} &nbsp;  Versão 8.0.0 (lançada em junho de 2025)

- Correção do problema de lock de sessão que retornava status “locked” mesmo com sessões disponíveis.
- Correção do tratamento do modo de conexão no protocolo AS2.
- Implementação de parâmetros de configuração de usuário para o protocolo AS2.
- Implementação do tratamento de mensagens com codificação BER.
- Implementação do suporte a MDN assíncrono, incluindo envio, recepção e tratamento de erros.
- Implementação do tratamento do MIC em mensagens AS2 (recepção criptografada e comprimida).
- Implementação do controle de algoritmos suportados para assinatura, criptografia e cálculo do MIC no AS2.
- Implementação da validação de certificados TLS (client e server) nas conexões AS2.
- Implementação da leitura das configurações do usuário no recebimento de mensagens AS2.
- Implementação de parâmetros para definição das opções requeridas na recepção de documentos (assinatura, criptografia e compressão).
- Implementação do envio de headers customizados por conexão e por tipo de arquivo no AS2.
- Implementação do tratamento de endereço local e proxy na conexão de saída.
- Implementação de eventos de notificação para início/fim de sessão, início/fim de recepção de documentos e eventos de log.
- Implementação de logging de requisições HTTP/HTTPS com status de resposta.
- Implementação de tratamento de timeout nas conexões client e server.
- Implementação do suporte completo ao recebimento de arquivos no AS2, contemplando diferentes cenários de criptografia, assinatura e MDN.
- Implementação da integração dos módulos AS2 Server e AS2 Client ao core principal.
- Ajustes nas mensagens de log de erro do AS2 Server.
- Alteração do parâmetro de assinatura de SIGN para SIGN_MULTIPART nas configurações de envio e obrigatoriedade de documentos.

### {{< icon "clock" >}} &nbsp;  Versão 7.1.8 (lançada em maio de 2025)

- Correção da mensagem de notificação de download do SecureLink, que informava incorretamente 0 dias para expiração.
- Correção do tratamento de mensagens do tipo vídeo na interface do webhook do WhatsApp.
- Correção do problema de formatação no comando de envio de dados para gravação na área do sandbox ou keystore quando o conteúdo não é texto.
- Correção do envio de mensagens via WhatsApp no modo SecureLink com PIN.
- Implementação de comando na interface de supervisão para upload de certificados e chaves.
- Implementação de comando na interface de supervisão para listagem de certificados e chaves.
- Implementação de comando na interface de supervisão para listagem das áreas do sandbox.
- Implementação de comando na interface de supervisão para remoção de arquivos em áreas do sandbox.
- Implementação de comando na interface de supervisão para remoção de certificados e chaves.
- Implementação de comando na interface de supervisão para adição de arquivos em áreas do sandbox.
- Implementação de parâmetro para configuração do diretório de armazenamento do keystore.
- Implementação do tratamento de envio de localização via WhatsApp.
- Implementação de mensagens de log para erros no envio de templates via webhook do WhatsApp.
- Implementação do registro do nome do operador nos logs de operações no sandbox e keystore.
- Implementação do registro do número de telefone/ID de origem nas mensagens enviadas via SMS/WhatsApp.
- Implementação de logs para operações de adição e remoção de arquivos no sandbox de transferência.
- Implementação de logs para operações de adição e remoção de arquivos no keystore.
- Implementação da criação da área de keystore (certs/keys) no script de instalação.
- Implementação de filtro por expressão regular na listagem do keystore.
- Ajuste dos códigos de mensagens do SFTP de MSG0149 para MSG0180 e de MSG0151 para MSG0181.

### {{< icon "clock" >}} &nbsp;  Versão 7.1.5 (lançada em abril de 2025)

- Correção do problema na mensagem MSG0035, que apresentava um parâmetro extra em sua exibição.

### {{< icon "clock" >}} &nbsp;  Versão 7.1.4 (lançada em abril de 2025)

- Correção do problema que causava falha na inicialização da aplicação no Windows.
- Correção do problema na criação de diretórios para sandboxes de transferência.
- Correção do problema na exibição dos relatórios de upload e download.
- Correção do problema de comunicação SFTP com proxies que utilizam caracteres especiais.
- Correção no envio da informação de hash pelo cliente.
- Implementação da criação automática de pastas no primeiro acesso.
- Implementação de mensagem de erro para usuário de destino não encontrado.
- Implementação do cálculo de hash dos arquivos para registro em log.
- Implementação da alteração de senha exclusivamente via portal.
- Implementação de página para download sem PIN integrada ao WhatsApp.
- Implementação de cliente de transferência via WhatsApp.
- Implementação de notificações de MFA e Link Seguro via WhatsApp utilizando as APIs Zendesk e META.
- Melhoria na conexão para usuários configurados apenas como “sender”.
- Melhorias no tratamento de transferências via SecureLink.
- Atualização das bibliotecas de acesso ao banco de dados.
- Definição de algoritmo padrão para autenticação de chaves, evitando erros de autenticação.
- Ajustes na geração de mensagens de controle para conexões de saída.
- Criação de parâmetro para configuração do diretório de LINK.
- Criação de central de transferências via WhatsApp utilizando a API META.
- Adição de campo para número de celular na configuração do usuário.
- Implementação da configuração de endereço local na chamada do SFTP Client.

### {{< icon "clock" >}} &nbsp;  Versão 6.9.10 (lançada em outubro de 2024)

- Correção do problema ao processar parâmetros com aspas duplas e simples, garantindo o parsing correto na linha de comando.
- Melhoria na expressão regular do parsing da linha de comando.

### {{< icon "clock" >}} &nbsp;  Versão 6.9.9 (lançada em outubro de 2024)

- Correção do nome do campo controle LOGIN_TOTP_SECRET para LOGIN_OTP_SECRET na tabela AUTHENTICATIONS do banco de dados de configuração do STCP Gemini.
- Correção do problema relacionado ao parâmetro TCPSSLCipher que impedia a conexão com servidor ao utilizar o protocolo SFTP.
- Correção de falha na recepção de arquivos via SFTP Client utilizando o DirectLink em Linux, onde a conexão era encerrada quando um arquivo era bloqueado pelo filtro de arquivos.
- Melhorias no tratamento de espaços em branco nas chaves autorizadas.
- Correção do problema da chave com senha na interface da API.
- Correção do problema de exibição do certificado no handshake TLS ao testar a conectividade da rede de supervisão.

### {{< icon "clock" >}} &nbsp;  Versão 6.9.5 (lançada em agosto de 2024)

- Correção do problema na mensagem de log do serviço API (HTTP/HTTPS), que não exibia o tipo de conexão.
- Melhorias na formatação da string do argon2id para garantir a compatibilidade com o STCP Gemini.

### {{< icon "clock" >}} &nbsp;  Versão 6.9.3 (lançada em junho de 2024)

- Correção do problema no filtro de transferência SFTP utilizando um arquivo externo (whitelist e blacklist).
- Correção do problema na exibição do código de erro para a mensagem "Bloqueado pelo filtro".
- Melhorias na função para mascarar informações sensíveis nos logs.
- Melhoria na estrutura das mensagens de logs de eventos (structured log messages).
- Melhoria no algoritmo de derivação seguindo a recomendação do OWASP, na geração do Token de validação.
- Implementação de parâmetros para o controle autenticação LDAP.
- Implementação do suporte ao protocolo de autenticação SSO SAML2.

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
