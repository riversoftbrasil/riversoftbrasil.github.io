---
linkTitle: Configuração no IIS
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 3
prev:
next:
draft: false
lastmod: 2024-05-06
---
# Introdução

Esta seção tem por objetivo descrever os passos necessários para configuração do STCP OFTP Web Admin no IIS (versões 5, 6 e 7/7.5).

Para realização destes procedimentos os seguintes pré-requisitos são necessários:

* Instalação do IIS no servidor;
* Instalação do STCP OFTP Web Admin;
* Criação do banco de dados STCP OFTP Web Admin;
* Configuração do driver ODBC para acesso ao banco de dados do STCP OFTP Web Admin;
* Instalação e configuração do processador de scripts PHP.

Maiores detalhes relacionados à instalação do STCP OFTP Web Admin podem ser obtidos na seção de [instalação](/stcpwebadmin/install/)

## IIS 5

{{< icon "chevron-right" >}}Acesse o **Internet Services Manager** através do _menu_: **Iniciar → Programs → Administrative Tools**.

![](./imagem2/img24.png)

{{< icon "chevron-right" >}}Clique com o botão direito do mouse em **Default Web Site** para expandir o
menu, vá até **New** e selecione **Site**.

![](./imagem2/img25.png)

{{< icon "chevron-right" >}}Clique em **Next** para continuar a instalação do novo Web Site.

![](./imagem2/img26.png)

{{< icon "chevron-right" >}}Digite um nome para a descrição do novo Web Site.

![](./imagem2/img27.png)

{{< icon "chevron-right" >}}Verifique com o Administrador da Rede as configurações corretas para este passo e clique em **Next** para prosseguir.

![](./imagem2/img28.png)

{{< icon "chevron-right" >}}Selecione a pasta **www** do diretório que foi indicado no procedimento de instalação

```
<disco>:\Inetpub\wwwroot\STCPWEB_ADMIN\
```

{{< icon "chevron-right" >}}Clique em **Next** para continuar.

![](./imagem2/img29.png)

{{< icon "chevron-right" >}}Marque as seguintes opções:

![](./imagem2/img30.png)

{{< icon "chevron-right" >}}Clique em **Finish** para finalizar a criação do novo Web Site.

![](./imagem2/img31.png)

{{< icon "chevron-right" >}}Clique com o botão direito em **STCPWEB** e selecione **Properties**.

![](./imagem2/img32.png)

{{< icon "chevron-right" >}}Na guia **Home Directory**, marque as opções de acordo com a imagem abaixo.

![](./imagem2/img33.png)

{{< icon "chevron-right" >}}Clique no botão **Configuration** para prosseguir.

![](./imagem2/img34.png)

{{< icon "chevron-right" >}}Clique em **Add** para adicionar a extensão do PHP para o IIS 5.

![](./imagem2/img35.png)

{{< icon "chevron-right" >}}Digite o caminho do arquivo “**php-cgi.exe**” no campo Executable e “**.php**” em Extension.

![](./imagem2/img36.png)

{{< icon "chevron-right" >}}Clique em **OK** para salvar as configurações.

![](./imagem2/img37.png)

{{< icon "chevron-right" >}}Confirme se a extensão foi instalada corretamente e clique em **OK**.

![](./imagem2/img38.png)

{{< icon "chevron-right" >}}Na guia **Documents**, clique em **Add**.

![](./imagem2/img39.png)

{{< icon "chevron-right" >}}Adicione **stcpweblogin.php** como a página inicial padrão do novo site que foi criado.

![](./imagem2/img40.png)

{{< icon "chevron-right" >}}Com o botão direito do mouse, clique em **STCPWEB → New → Virtual Directory**.

![](./imagem2/img41.png)

{{< icon "chevron-right" >}}A tela de criação do diretório virtual é apresentada. Clique em **Next** para prosseguir.

![](./imagem2/img42.png)

{{< icon "chevron-right" >}}Digite **“stcpweb”** como o novo nome para o diretório virtual.

![](./imagem2/img43.png)

{{< icon "chevron-right" >}}Procure o diretório **“C:\Inetpub\wwwroot\STCPWEB_ADMIN\www”**, onde será publicado o Web Site.

![](./imagem2/img44.png)

{{< icon "chevron-right" >}}Marque as seguintes opções:

![](./imagem2/img45.png)

{{< icon "chevron-right" >}}Clique em **Finish** para finalizar a criação do diretório virtual.

![](./imagem2/img46.png)

{{< icon "chevron-right" >}}A configuração do Riversoft STCP OFTP Web Admin no IIS 5 foi concluída com sucesso.

![](./imagem2/img47.png)

## IIS 6

{{< icon "chevron-right" >}}Acesse a ferramenta de gerenciamento e administração do Internet Information Services (IIS) para criar o site do Riversoft STCP OFTP Web Admin.

![](./imagem2/img48.png)

{{< icon "chevron-right" >}}Adicione uma Extension para o PHP, clicando com o botão direito do mouse em “Web Service Extension” e selecione **Add a new Web service extension**.

![](./imagem2/img49.png)

{{< icon "chevron-right" >}}Digite **“PHP”** como o nome da nova extensão Web service:

![](./imagem2/img50.png)

{{< icon "chevron-right" >}}Procure o diretório de instalação do arquivo **php-cgi.exe**, ou digite o caminho:

![](./imagem2/img51.png)

{{< icon "chevron-right" >}}Marque a opção **Set extension status to Allowed** e clique em **OK**.

![](./imagem2/img52.png)

{{< icon "chevron-right" >}}Crie o novo site para o Riversoft STCP OFTP Web Admin.

![](./imagem2/img53.png)

{{< icon "chevron-right" >}}Verifique com o Administrador da Rede as configurações corretas para este passo e clique em **Next** para prosseguir.

![](./imagem2/img54.png)

{{< icon "chevron-right" >}}Procure o diretório onde o novo Web Site será criado, ou digite o caminho. Caso este não exista, ele deverá ser criado previamente.

![](./imagem2/img55.png)

{{< icon "chevron-right" >}}Clique em **Next** para prosseguir.

![](./imagem2/img56.png)

{{< icon "chevron-right" >}}Marque as seguintes opções:

![](./imagem2/img57.png)

{{< icon "chevron-right" >}}Adicione **stcpweblogin.php** como a página inicial padrão do novo site que foi criado.

![](./imagem2/img58.png)

{{< icon "chevron-right" >}}Na guia **Home Directory**, selecione as opções mostradas abaixo.

![](./imagem2/img59.png)

{{< icon "chevron-right" >}}Clique em **Configuration** para prosseguir.

![](./imagem2/img60.png)

{{< icon "chevron-right" >}}Digite o caminho do arquivo **php-cgi.exe** no campo Executable e **.php** em Extension.

![](./imagem2/img61.png)

{{< icon "chevron-right" >}}Com o botão direito do mouse clique em **STCPWEB → New → Virtual Directory**.

![](./imagem2/img62.png)

{{< icon "chevron-right" >}}Digite **stcpweb** como o nome do diretório.

![](./imagem2/img63.png)

{{< icon "chevron-right" >}}Procure o diretório onde o Web Site será publicado, ou digite o caminho.

![](./imagem2/img64.png)

{{< icon "chevron-right" >}}Configure as permissões de acesso para o usuário **Internet Guest Account (IUSR)** nos diretórios abaixo relacionados:

Diretório| Permissões
:---     | :---
C:\php   | Leitura /Execução
C:\php\sessiondata| Leitura /Gravação
C:\Inetpub\wwwroot\STCPWEB_ADMIN\www| Leitura /Gravação /Modificação
%SYSTEMROOT%\CMD.EXE| Leitura /Execução
C:\Inetpub\wwwroot\STCPWEB_ADMIN\conf| Leitura /Gravação /Modificação


## IIS 7/7.5

### Suporte a aplicações PHP no IIS 7/7.5

{{< icon "chevron-right" >}}O primeiro passo a ser feito é habilitar a role CGI no IIS. Para isso acesse **Gerenciador de servidores » Funções » Servidor Web (IIS) » Adicionar Serviços de Função**

![](./imagem/img1.png)

{{< icon "chevron-right" >}}Na tela **Adicionar Serviços de Função**, em **Desenvolvimento de Aplicativo**, selecione **CGI** e clique em **Instalar** para continuar.

![](./imagem/img2.png)

## Configurando o IIS para manipular requisições PHP

{{< icon "chevron-right" >}}Abra o Gerenciador de Serviços de Informações da Internet (IIS), selecione o nome do servidor e de um duplo clique em **Mapeamentos de Manipulador**.

![](./imagem/img3.png)

{{< icon "chevron-right" >}}No painel **Ações**, clique em **Adicionar mapeamento de Script**.

![](./imagem/img4.png)

{{< icon "chevron-right" >}}Na janela **Adicionar Mapeamento de Script** preencha os parâmetros solicitados conforme a imagem abaixo e pressione o botão **OK**. Note que no parâmetro **Executável** deverá ser informado o diretório do arquivo **php-cgi.exe** no ambiente em questão.

Neste procedimento a instalação do PHP foi realizada no diretório **C:\PHP5**.

![](./imagem/img5.png)

A mensagem abaixo poderá ser exibida solicitando permissão para adicionar a extensão ISAPI. Clique no botão **Sim** para continuar.

![](./imagem/img6.png)

## Criação e configuração do site no IIS

{{< icon "chevron-right" >}}Ainda na janela do Gerenciador de Serviços de Informações da Internet (IIS), selecione **Sites** e no painel **Ações** clique em **Adicionar Site**.

![](./imagem/img7.png)

{{< icon "chevron-right" >}}Na janela **Adicionar Site** preencha os parâmetros solicitados conforme imagem abaixo e pressione o botão “OK” para concluir a criação do site. Note que no parâmetro **Caminho físico** deverá ser informado a pasta **www** do diretório de instalação do STCP OFTP Web Admin no ambiente em questão.

Neste procedimento a instalação do STCP OFTP Web Admin foi realizada no diretório **C:\inetpub\wwwroot\stcpwebadmin**.

![](./imagem/img8.png)

{{< callout type="warning" >}}
 Verique com o administrador de rede quais as configurações corretas para a etapa anterior.
{{< /callout >}}

{{< icon "chevron-right" >}}O novo site será exibido no painel **Conexões**, da janela do Gerenciador de Serviços de Informações da Internet (IIS).

![](./imagem/img10.png)

{{< icon "chevron-right" >}}Selecione este novo site (Ex. stcpwebadmin) e na área **IIS**, dê um duplo clique no ícone **Documento Padrão**.

![](./imagem/img11.png)

{{< icon "chevron-right" >}}No painel **Ações** clique em **Adicionar**.

![](./imagem/img12.png)

{{< icon "chevron-right" >}}Na janela **Adicionar Documento Padrão** preencha o parâmetro solicitado conforme imagem abaixo e pressione o botão **OK** para concluir a configuração do documento padrão.

![](./imagem/img13.png)

{{< icon "chevron-right" >}}Selecione novamente o novo site (Ex. stcpwebadmin) e no painel **Ações**, clique em **Procurar *:XX (http)**. Onde **XX** refere-se à porta configurada.

![](./imagem/img14.png)

Se todos os pré-requisitos foram atendidos e os passos deste procedimento seguidos corretamente, a janela do STCP OFTP Web Admin deverá ser exibida.

![](./imagem/img15.png)


