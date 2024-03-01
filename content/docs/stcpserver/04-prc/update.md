---
linkTitle: Atualização de versão
slug: atualizacao
weight: 3
---
# Atualização de versão

Este documento tem como objetivo descrever os passos necessários para atualização das versões, 4.1.0 ou anteriores, para a nova versão do STCP OFTP Server Enterprise ou STCP OFTP Server Lite.

Na versão atualizada, a console da aplicação (ícone na barra de tarefas do Windows), foi substituída pelo STCPConsole.

O STCPConsole é um sistema que tem como principal funcionalidade permitir que sejam realizadas atividades de monitoração de um determinado servidor. Estas atividades envolvem a monitoração de usuários (monitora todos os usuários ativos) e a monitoração de eventos (monitora todos os eventos do servidor).

Para maiores detalhes, consulte a documentação do produto.
http://www.riversoft.com.br/downloads/manuais/stcp_console_ptb.pdf

A nova versão do _**STCP OFTP Server Enterprise**_ já suporta a comunicação através de FTP, SFTP e HTTP, trabalhando como cliente para tais protocolos.

---
## Antes de Iniciar

Nos casos de migração do servidor STCP OFTP e para preservar as configurações dos roteamentos (_STCPRen_) e agendamentos em operação no ambiente atual, recomendamos que o novo servidor possua as mesmas características (_hostname, endereço ip, recursos compartilhados_) ao antigo.

Antes de qualquer alteração no ambiente STCP, recomenda-se uma cópia de segurança dos diretórios de _Controle e Dados_ da aplicação.

![](./imagem2/img9.png)

---
### Migração dos Arquivos de Configuração (*.INI)

Para transferir as configurações do STCP OFTP, do servidor atual para um novo, após a instalação copie os arquivos de configuração *_.INI_, existentes no diretório de _Controle_ (Ex. **C:\STCPODT**), do servidor antigo para respectivo diretório do novo servidor.

![](./imagem2/img10.png)

* CTCP.INI
* CTCPSCHED.INI
* NOME-USUARIO1.INI ... NOME-USUARIO2.INI ...

---
### Migração Diretório de Dados

A estrutura de pastas (Ex. **C:\STCPODT\DADOS\NOME-USUARIO**), configurada no diretório de **Dados** do STCP OFTP, também deverá ser copiada do servidor atual para o novo. Cada usuário criado (guia Usuários) possui a sua própria estrutura de pastas.

<!-- ![](./imagem2/img11.png) -->

<!-- ![](./imagem2/img12.png) -->

---
## Procedimento para Atualização de Versão

1. Acesse o STCP OFTP Server Config (_Iniciar - Todos os programas - Riversoft STCP OFTP
Server_) e pare o serviço quando for solicitado.

<!-- ![](./imagem2/img13.png) -->

2. Na tela de confirmação de que o serviço foi desativado com sucesso, clique em _OK_.

<!-- ![](./imagem2/img14.png) -->

3. Na guia _Geral_ desmarque a opção _Executar como serviço_ e clique em _OK_ para confirmar. Dessa forma o STCP OFTP será removido da lista de serviços do Windows.

<!-- ![](./imagem2/img15.png) -->

4. Realize uma cópia de segurança dos diretórios de _Controle_ e _Dados_. Tais diretórios podem ser vizualizados, na guia _Geral_ do STCP OFTP Server Config.

<!-- ![](./imagem2/img16.png) -->

5. Em _Adicionar/Remover Programas_ no _Painel de Controle_ do Windows, remova a versão atual do STCP OFTP Server. A estrutura de diretórios da aplicação (_Controle e Dados_) será mantida, juntamente com os arquivos de configuração (.INI).

<!-- ![](./imagem2/img17.png) -->

6. Faça o download, da versão nova versão, através do link enviado pela equipe de suporte da Riversoft e realize a instalação do produto.

<!-- ![](./imagem2/img18.png) -->

<!-- ![](./imagem2/img19.png) -->

7. Após o processo de instalação, acesse o STCP OFTP Server Config (**Iniciar - Todos os programas - Riversoft STCP OFTP Server**) e na guia _Avançadas_ clique no botão _Controle de Log_.

<!-- ![](./imagem2/img20.png) -->

8. Na janela _Propriedades do Log_, no painel _Interface de Log (DLL)_, selecione a biblioteca de log desejada e clique no botão _OK_ para salvar esta alteração.

Para a gravação de log em **banco de dados** (ODBC), selecione o arquivo:
C:\STCPODT\Program\stcplogodbc.dll

Para a gravação de log em **arquivo texto**, selecione o arquivo:
C:\STCPODT\Program\stcplogtxt.dll

<!-- ![](./imagem2/img21.png) -->

9. Ainda na guia _Avançadas_, clique no botão _Controle de Autenticação_.

<!-- ![](./imagem2/img22.png) -->

10. Na guia _Geral da janela Autenticação_, no painel _Interface de Autenticação (DLL)_, selecione o arquivo: **C:\STCPODT\Program\stcpauthwin.dll**

Certifique-se de que o campo _Tipo_, do painel _Autenticação_, esteja com o valor _STCP_ e clique no botão _OK_ para salvar as alterações realizadas.

<!-- ![](./imagem2/img23.png) -->

11. Clique no botão _OK_ para fechar o STCP OFTP Server Config. O próximo passo será a criação do serviço do STCP OFTP Server no Windows.

---
## Serviço do STCP OFTP Server

Para que sejá possível criar e iniciar o serviço do STCP OFTP Server, utilizaremos o STCP OFTP Server Manager.

O STCP OFTP Server Manager é um sistema gerenciador de serviços STCP, é similar ao gerenciador de serviços do Windows, embora seja usado somente para manipular serviços da família de produtos do STCP.

Esse sistema permite que seja instalado/desinstalado o serviço do Riversoft STCP OFTP Server Enterprise (STCPSrv_1) ou Lite (STCPSrvLite_1). Também é permitido iniciar, parar e reiniciar um serviço, desde que se tenham as permissões apropriadas.

1. Acesse o STCP OFTP Server Manager (**Iniciar - Todos os programas - Riversoft STCP
OFTP Server**), selecione o serviço _Riversoft STCP OFTP Server Enterprise 1/Lite 1_ e clique
no botão _Instalar serviço_.

<!-- ![](./imagem2/img24.png) -->

2. Uma mensagem confirmando que o serviço foi instalado com sucesso será exibida. Clique em _OK_ para finalizar.

<!-- ![](./imagem2/img25.png) -->

3. Selecione o serviço recém-criado e clique no botão _Iniciar_.

<!-- ![](./imagem2/img26.png) -->

4. O serviço será iniciado e seu status alterado para _Iniciado_. Esse servico também pode ser criado e removido pelo prompt de comando (cmd) do sistema operacional.

<!-- ![](./imagem2/img27.png) -->

Para maiores detalhes, consulte o item _Como executar o STCP OFTP Server através da linha
de comando_, página 112, da documentação do produto.
(http://www.riversoft.com.br/downloads/manuais/STCPSrv_4_0-PTB.pdf)

---
## STCPConsole

Conforme já mencionado, nas versões atualizadas do STCP OFTP Server, a console da aplicação (ícone na barra de tarefas do Windows), foi substituída pelo STCPConsole.

O STCPConsole é um sistema que tem como principal funcionalidade permitir que sejam realizadas atividades de supervisão e gerenciamento de um determinado servidor. Estas atividades envolvem a monitoração de usuários (monitora todos os usuários ativos) e a monitoração de eventos (monitora todos os eventos do servidor).

<!-- ![](./imagem2/img28.png) -->

Para configuração e uso do STCPConsole, consulte a documentação do produto:
(http://www.riversoft.com.br/downloads/manuais/stcp_console_ptb.pdf)

<!-- ![](./imagem2/img29.png) -->

> NOTA: É importante lembrar que as atividades de supervisão e gerência, dos servidores STCP OFTP, podem ser realizadas, também, pela ferramenta STCP OFTP Web Admin.

---
## Configuração da Rede de Monitoração - TCPIP_MON

Para utilização do STCP Console, uma rede (Ex. **TCPIP_MON_1**) utilizando o protocolo _Monitor – TCP/IP_ deverá estar previamente criada e configurada, na guia _Redes_, do STCP OFTP Server.

Por padrão da aplicação, para este tipo de rede é utilizada a porta 33050, que poderá ser alterada conforme especificações e/ou características da infraestrutura utilizada.

1. Acesse o STCP OFTP Server Config (Iniciar - Todos os programas - Riversoft STCP OFTP Server) e na guia _Redes_ clique no botão _Adicionar_ e selecione o protocolo _Monitor – TCP/IP_. Clique no botão _OK_ para confirmar.

<!-- ![](./imagem2/img30.png) -->

2. Na janela _Propriedades da rede para monitor_, preencha o campo descrição e selecione a guia _TCP/IP_.

<!-- ![](./imagem2/img31.png) -->

3. Realize as configurações conforme imagem abaixo.

<!-- ![](./imagem2/img32.png) -->

4. Selecione a guia _Monitor_ e preencha os campos abaixo:
```
Usuário: stcpmon
Senha: stcpmon
Confirmar: stcpmon
```
<!-- ![](./imagem2/img33.png) -->

5. Clique no botão _OK_ para salvar as alterações.

6. Clique no botão _OK_ novamente para finalizar o configurador.

7. Acesse o STCP OFTP Server Manager (_Iniciar - Todos os programas - Riversoft STCP OFTP Server_), selecione o serviço _Riversoft STCP OFTP Server_ e clique no botão _Reiniciar_.

<!-- ![](./imagem2/img34.png) -->

8. Após o reinício do serviço a rede de monitoração (**TCPIP_MON_1**) já estará ativa.



