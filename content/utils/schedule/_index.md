---
linkTitle: Execução automática
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
weight: 7
prev: /debug
next: /events
draft: false
lastmod: 2024-05-20
---
# Configurar um agendamento

Nesta seção veremos como configurar a execução automática do Riversoft STCP OFTP Client no **Windows** e **Windows Server**.

Para executar automaticamente a aplicação de transferência de arquivos, devemos realizar os seguintes passos de configuração das tarefas agendadas do sistema operacional:

{{< icon "chevron-right" >}}&nbsp; Acesse o **Agendador de Tarefas** dentro de **Ferramentas Administrativas**.

{{< icon "chevron-right" >}}&nbsp; Clique em **Criar Tarefa** no painel **Ações**.

![](clt-agenda-01.png)

{{% steps %}}

### Configurações

Na guia **Geral** da janela de criação da tarefa configure os campos conforme a sua necessidade. Observe atentamente as opções de segurança conforme as configurações do seu ambiente.

Na guia **Disparadores** clique no botão **Novo**.

![](clt-agenda-02.png)

### Agendamento

Na janela **Novo Disparador** configure o agendamento conforme desejado e clique no botão **OK** para salvar as informações.

![](clt-agenda-03.png)

Na guia **Ações** clique no botão **Novo**

![](clt-agenda-04.png)

### Programa/script

No campo **Programa/script** informe a linha de comando utilizada para executar o STCP OFTP Client (vide exemplo abaixo) e clique no botão **OK**.

```
C:\STCPCLT\program\stcpclt.exe "C:\STCPCLT\CTCP.INI" -p PERFIL-TESTE -r 5 -t 30 -m B
```

{{< callout type="info" >}}
  Para obter a linha de comando utilizada, clique com o botão direito do mouse
  no atalho do STCP OFTP Client, que foi criado na área de trabalho no momento
  da instalação e configuração do software. Na guia **Atalho**, copie o conteúdo
  do campo **Destino**
{{< /callout >}}

Ao ser apresentada a mensagem abaixo clique no botão **Sim**.

![](clt-agenda-06.png)

Após a criação da tarefa, esta será exibida na janela principal do **Agendador de Tarefas**.

![](clt-agenda-07.png)

{{% /steps %}}
