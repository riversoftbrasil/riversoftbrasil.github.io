![](../img/logo.png)

## Teste de conectividade (OpenSSL)

Em alguns casos, para que seja possível a identificação de problemas relacionados à conexão e a troca de arquivos, utilizando o STCP OFTP Client {{ customer }}, se faz necessário à realização de testes de conectividade entre as partes envolvidas no processo de transferência.

Quando a conexão é estabelecida através de uma porta de comunicação segura (SSL/TLS), siga os passos descritos abaixo:

{{% steps %}}

### Download Openssl

Efetue o download da ferramenta OpenSSL através do link: [Download Openssl](http://www.riversoft.com.br/produtos/pub/stcp-openssl.zip)

### Cópia do arquivo

Copie o arquivo openssl.exe para o diretório `C:/Temp` (ou outro de sua preferencia).

### Prompt de comando

Acesse o prompt de comando do Windows *(a execução deverá ser sem as credenciais de Administrador)*.

### Comando Openssl

No diretório copiado, execute o comando openssl.exe.

![](../img/openssl-01.png)

### Linha de comando

Após acesso ao OpenSSL, execute a linha de comando abaixo:

```
s_client -host {{ ip }} -port {{ port }} –debug
```

![](../img/openssl-02.png)

A tela a seguir deverá ser apresentada em caso de sucesso. Observe que para haver sucesso no teste de conectividade, a mensagem **ODETTE FTP READY** deverá ser exibida conforme a imagem de exemplo abaixo.

![](../img/openssl-03.png)

Caso o teste retorne falha na conexão, por favor, verifique com a área de infraestrutura de rede se não existe nenhum bloqueio (Firewall/Proxy) na comunicação.

![](../img/openssl-04.png)

É importante validar a liberação das conexões de saída (lado parceiro) e conexões de entrada (lado servidor), para o IP e Portas utilizados.

A mensagem de erro poderá variar conforme o problema existente na conectividade.

{{< callout type="info" >}}
Obs.: Em caso de dúvidas na execução deste processo, consulte o seu administrador de rede.
{{< /callout >}}

{{% /steps %}}