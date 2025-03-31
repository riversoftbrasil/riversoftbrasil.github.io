---
linkTitle: Segurança
layout: docs
toc: true
cascade:
  type: docs
sidebar:
  exclude: false
prev: /protocols
next: /events
draft: false
---
## Protocolo OFTP

No **OFTP (Odette File Transfer Protocol)**, temos um protocolo robusto e seguro amplamente utilizado na indústria automotiva e em outros setores para a troca de dados eletrônicos (EDI). A segurança oferecida pelo OFTP é uma de suas maiores vantagens, e aqui estão alguns dos principais benefícios:

**Criptografia e Autenticação:** O OFTP oferece suporte para criptografia avançada, garantindo que os dados trocados entre as partes sejam protegidos contra interceptação e acesso não autorizado. Além disso, a autenticação dos participantes assegura que apenas entidades confiáveis possam se comunicar, prevenindo fraudes e garantindo a integridade das transações.

**Confirmação de Recebimento:** Um dos diferenciais do OFTP é a capacidade de confirmar a recepção dos arquivos transferidos. Isso garante que as partes envolvidas tenham certeza de que os dados foram entregues e recebidos corretamente, reduzindo o risco de perda de informações e aumentando a confiança no processo.

**Transmissão Segura de Arquivos Grandes:** OFTP foi projetado para lidar eficientemente com a transferência de arquivos de grande volume. Com sua capacidade de retomar transferências interrompidas e assegurar que os dados cheguem ao destino completo e sem erros, o protocolo é ideal para o compartilhamento de grandes volumes de dados.

**Compatibilidade e Flexibilidade:** O OFTP é amplamente compatível com diversos sistemas e plataformas, facilitando a integração entre diferentes parceiros comerciais. Isso permite que as empresas mantenham seus dados seguros sem a necessidade de grandes mudanças em sua infraestrutura tecnológica.

**Resiliência e Confiabilidade:** Além da segurança, o OFTP é conhecido por sua alta confiabilidade e resiliência. O protocolo inclui mecanismos para verificar a integridade dos dados durante a transferência e para retransmitir partes corrompidas, garantindo que a informação seja transferida corretamente mesmo em condições de rede adversas.

O OFTP traz **segurança**, **confiabilidade** e a **integridade** na troca de dados sensíveis. Ao implementar o OFTP, as organizações podem ter a tranquilidade de saber que suas comunicações estão protegidas contra ameaças e que seus dados chegarão ao destino de forma segura e intacta.

## Protocolo SFTP

Já no protocolo **SFTP (Secure File Transfer Protocol)**, temos um protocolo seguro para transferência de arquivos que combina a funcionalidade do FTP com a segurança do SSH (Secure Shell). Ele é amplamente utilizado por empresas e indivíduos que precisam transferir dados de forma segura pela internet ou redes privadas. 

Aqui estão algumas das principais vantagens do SFTP:

**Segurança Criptografada:** A principal vantagem do SFTP é a segurança. Todo o tráfego entre o cliente e o servidor é criptografado, o que impede que os dados sejam interceptados ou modificados por atacantes. Isso inclui tanto os dados transferidos quanto as credenciais de login.

**Autenticação Segura:** O SFTP utiliza a autenticação baseada em chaves SSH, que é muito mais segura do que as senhas tradicionais. Isso protege contra tentativas de login não autorizadas e garante que apenas usuários devidamente autenticados possam acessar o servidor.

**Integridade dos Dados:** O SFTP verifica a integridade dos dados durante a transferência, garantindo que os arquivos não sejam corrompidos ou alterados no processo. Isso é crucial para a confiabilidade das transferências, especialmente em ambientes onde a precisão dos dados é essencial.

**Firewall-Friendly:** Diferente do FTP tradicional, que requer múltiplas portas para a transferência de dados, o SFTP funciona sobre uma única conexão e porta, geralmente a porta 22. Isso simplifica a configuração de firewalls e reduz o risco de vulnerabilidades associadas a portas abertas.

**Transferências de Arquivos de Qualquer Tamanho:** O SFTP é capaz de lidar com transferências de arquivos de qualquer tamanho, seja ele pequeno ou extremamente grande. Isso o torna adequado para uma ampla gama de aplicações, desde o envio de pequenos documentos até grandes bases de dados ou backups.

**Continuação de Transferências Interrompidas:** Uma característica útil do SFTP é a capacidade de retomar transferências interrompidas. Se uma transferência for interrompida devido a problemas de conexão ou outros fatores, ela pode ser continuada de onde parou, economizando tempo e largura de banda.

**Controle de Acesso e Permissões:** SFTP oferece um controle granular sobre o acesso e as permissões dos arquivos. Os administradores podem definir quais usuários ou grupos têm acesso a determinados arquivos ou diretórios, garantindo que os dados sensíveis sejam acessados apenas por pessoas autorizadas.

**Compatibilidade e Flexibilidade:** O SFTP é amplamente suportado por uma variedade de sistemas operacionais e ferramentas de software, o que facilita sua implementação em diferentes ambientes de TI. Ele também pode ser facilmente integrado a scripts e processos automatizados, tornando-o uma solução flexível para diversas necessidades de transferência de arquivos.

O SFTP é uma solução **segura**, **confiável** e **fácil** de usar para a transferência de arquivos, especialmente em contextos onde a proteção de dados sensíveis é uma prioridade.

## Protocolo TCP/IP

Trata-se do acrônimo de dois protocolos combinados. São eles o TCP (Transmission Control Protocol — Protocolo de Controle de Transmissão) e IP (Internet Protocol — Protocolo de Internet).

Juntos, são os responsáveis pela base de envio e recebimento de dados por toda a internet. Essa pilha de protocolos é dividida em 4 camadas:

* **Aplicação:** usada para enviar e receber dados de outros programas pela internet. Nessa camada estão os protocolos HTTP, FTP e SMTP;
* **Transporte:** responsável por transportar os arquivos dos pacotes recebidos da camada de aplicação. Eles são organizados e transformados em outros menores, que serão enviados à rede;
* **Rede:** os arquivos empacotados na camada de transporte são recebidos e anexados ao IP da máquina que envia e recebe os dados. Em seguida, eles são enviados pela internet;
* **Interface:** é a camada que executa o recebimento ou o envio de arquivos na web.

## Protocolo HTTP/HTTPS

O protocolo HTTP (Hypertext Transfer Protocol — Protocolo de Transferência de Hipertexto) é usado para navegação em sites da internet. Funciona como uma conexão entre o cliente (browser) e o servidor (site ou domínio).

O navegador envia um pedido de acesso a uma página, e o servidor retorna uma resposta de permissão de acesso. Junto com ela são enviados também os arquivos da página que o usuário deseja acessar.

Já o HTTPS (Hyper Text Transfer Secure — Protocolo de Transferência de Hipertexto Seguro) funciona exatamente como o HTTP, porém, existe uma camada de proteção a mais. Isso significa que os sites que utilizam esse protocolo são de acesso seguro.

O protocolo HTTPS é comumente usado por sites com sistemas de pagamentos. Esse tipo de site depende de proteção que garanta a integridade dos dados, informações de conta e cartão de créditos dos usuários. A segurança é feita por meio de uma certificação digital, que cria uma criptografia para impedir ameaças e ataques virtuais.

## Criptografia TLS

Alguns dos algoritmos mais atuais usados com TLS:

**1. AES (Advanced Encryption Standard):**

* AES-128: Utiliza uma chave de 128 bits, oferecendo um bom equilíbrio entre segurança e desempenho.
* AES-256: Utiliza uma chave de 256 bits, oferecendo um nível de segurança mais elevado.

**2. ChaCha20:**

* Um algoritmo de cifra rápida e eficiente, especialmente útil em dispositivos com hardware limitado ou em situações onde a velocidade é crucial.

**3. ECDHE (Elliptic Curve Diffie-Hellman Ephemeral):**

* Utilizado para o acordo de chaves, oferece uma segurança mais forte com menores chaves, graças ao uso de criptografia de curvas elípticas.

**4. RSA (Rivest-Shamir-Adleman):**

* Amplamente usado para troca de chaves e assinatura digital, embora esteja sendo gradualmente substituído por ECDHE em novas implementações devido a sua eficiência limitada em comparação com as curvas elípticas.

**5. SHA-256/384/512 (Secure Hash Algorithm):**

* Funções de hash que fornecem integridade dos dados. SHA-256 é o mais comum, mas SHA-384 e SHA-512 oferecem níveis mais elevados de segurança.

**6. GCM (Galois/Counter Mode):**

* Um modo de operação que oferece autenticação adicional e integridade dos dados, frequentemente usado com AES (AES-GCM).


| **Algoritmo**   | **Uso**                             | **Tamanho de Chave**      | **Segurança**   | **Comentário**                                                |
| --------------- | ----------------------------------- | ------------------------- | --------------- | ------------------------------------------------------------- |
| AES-128         | Cifra de dados                      | 128 bits                  | Alta            | Boa combinação de segurança e desempenho                      |
| AES-256         | Cifra de dados                      | 256 bits                  | Muito Alta      | Recomendado para segurança de longo prazo                     |
| ChaCha20        | Cifra de dados                      | 256 bits                  | Muito Alta      | Alternativa rápida ao AES, especialmente em hardware limitado |
| ECDHE           | Acordo de chaves                    | 256 bits (EC curve)       | Muito Alta      | Melhor eficiência comparado ao RSA                            |
| RSA             | Troca de chaves, assinatura digital | 2048/4096 bits            | Alta            | Usado historicamente, mas gradualmente substituído por ECDHE  |
| SHA-256/384/512 | Função de hash para integridade     | 256/384/512 bits          | Alta/Muito Alta | Proporciona integridade dos dados                             |
| GCM (AES-GCM)   | Autenticação de dados, integridade  | Variável (depende do AES) | Alta            | Oferece criptografia autenticada                              |

### Certificado digital emitido por uma autoridade certificadora (CA)

Veremos abaixo os procedimentos necessários para configuração do Riversoft STCP OFTP Server utilizando certificado emitido por uma **Autoridade Certificadora**.

#### Geração da CSR

A CSR, cuja sigla significa *Certificate Signing Request*, é um arquivo de texto, gerado pelo servidor web, contendo as informações para a solicitação do seu certificado junto à entidade certificadora escolhida e usada para gerar um certificado assinado digitalmente.

A CSR conterá informações importantes da companhia e deve ser preenchida conforme instruções já encaminhadas pela entidade certificadora contratada.

A geração da CSR é divida em duas etapas:

* Geração do par de chaves (que deve ser gerada no tamanho de 2048 bits)
* Geração da CSR

> [!WARNING] Aviso
> Como padrão, utilizaremos o utilitário **OpenSSL** para realização do processo de geração e configuração do certificado digital.


> [!NOTE] Nota: 
> O procedimento de geração de CSR, pode ser realizado por outro software de servidor (IIS, IBM Webshepere, iPlanet, Keytool, entre outros), conforme a infraestrutura utilizada.

#### Geração do Par de Chaves

Acesse a pasta **Program** do diretório de instalação do Riversoft STCP OFTP Server (Ex. C:\STCPODT\Program) e em seguida, para gerar o par de chaves, digite a linha de comando:

```
openssl genrsa -des3 > C:\STCPODT\Keys\chaveprivada.key 2048
```
<!-- Após digitar a linha de comando, o sistema solicitará que informe uma senha para proteger o par de chaves que será criado no diretório *C:\STCPODT\Keys*. -->

![](img/openssl-chave-priv.png "Linha de comando")

#### Geração da CSR (Certificate Signing Request)

Em seguida, para gerar a requisição (CSR), utilize a linha de comando e digite as informações solicitadas.
```
openssl req -new -key C:\STCPODT\Keys\chaveprivada.key > C:\STCPODT\Keys\solicitacao.csr -config C:\STCPODT\Program\openssl.cnf
```

#### Solicitação do certificado 
A CSR, gerada no passo anterior, deverá ser encaminhada para a entidade certificadora conforme procedimentos fornecidos por essa. Para maiores dúvidas referente ao envio da CSR entre em contato com seu agente de contas junto à entidade certificadora.

Faça uma cópia de segurança de sua chave privada e do CSR, e guarde-as em local seguro. **Nenhuma cópia de sua chave privada deverá ser distribuída e/ou solicitada por terceiros.**

#### Instalação e Configuração do certificado 

Uma vez Aprovado e Emitido, o contato técnico responsável do processo de certificação digital, receberá da entidade certificadora todas as informações pertinentes à instalação e configuração do certificado.

Para maiores dúvidas referente ao processo de instalação e configuração entre em contato com o seu agente de suporte (CA) e/ou com a sua equipe de segurança.

> [!WARNING] Aviso
> Este procedimento não tem como objetivo descrever o processo de instalação e configuração do certificado adquirido e sim os passos necessários para utilização desse certificado junto ao Riversoft STCP OFTP Server e Riversoft STCP OFTP Client.

#### Configurar Certificado

Para que seja possível configurar o STCP OFTP Server Enterprise/Lite, a fim de utilizar o certificado digital emitido por uma Autoridade Certificadora, será necessário possuir às **chaves pública e privada** e realizar os procedimentos descritos abaixo.

* Chave pública

Faça uma cópia da chave pública do certificado (arquivo .cer), encaminhado pela entidade certificadora, para a pasta Certs do diretório de instalação do STCP OFTP Server Enterprise/Lite (Ex. C:\STCPODT\Certs).

> NOTA: Em alguns casos o administrador precisa realizar a exportação da chave pública (*.cer) do Certificado.   Para isso, é possível utilizar o snap-in Certificados do Console de Gerenciamento Microsoft (MMC).

Para mais detalhes consulte: (https://technet.microsoft.com/pt-br/library/cc730988.aspx)

* Chave Privativa

A chave privativa (arquivo .key ou .pem) do certificado deverá ser copiada para a pasta Keys do diretório de instalação do STCP OFTP Server Enterprise/Lite (Ex. C:\STCPODT\Key).

> NOTA: Em alguns casos, onde o arquivo do certificado está no formato PFX, o processo de conversão para o formato PEM será necessário. É possível realizar a conversão usando o OpenSSL, disponível na pasta Program, do diretório de instalação do STCP OFTP Server/Lite (Ex. C:\STCPODT\Program).
<!-- Para mais detalhes consulte: (https://www.openssl.org/docs/apps/pkcs12.html) -->

```{filename="Chave Privativa"}

openssl pkcs12 -in C:\TEMP\empresateste.com.br.pfx -out C:\TEMP\private-key.pem -nodes
```
![](img/cert-01.png)

#### Geração do hash do certificado para uso no STCP OFTP Client

Anterior ao processo de configuração do certificado no STCP OFTP Client, será necessária obter uma cópia da cadeia de certificados, a partir do certificado assinado e enviado pela entidade certificadora e realizar o renomeio de cada certificado dessa hierarquia para o seu hash correspondente.

{{< icon "arrow-right-circle" >}}Faça uma cópia do certificado, encaminhado pela certificadora, para um diretório temporário do servidor onde o STCP OFTP Server está instalado (Ex. C:\TEMP).

{{< icon "arrow-right-circle" >}}Acesse o diretório temporário e clique com o botão direito do mouse no certificado (Ex. empresateste_certificate.cer) e selecione **Abrir**.

{{< icon "arrow-right-circle" >}}Na guia Caminho de Certificação selecione o certificado raíz (Ex. VeriSign Trial Secure Server Root CA – G2) e clique no botão Exibir Certificado.

![](img/cert-04.png)

{{< icon "arrow-right-circle" >}}Uma nova janela será exibida, contendo as informações do certificado selecionado (neste exemplo serão exibidas as informações do certificado raiz _VeriSign Trial Secure Server Root CA – G2)_

{{< icon "arrow-right-circle" >}}Selecione a guia **Detalhes** e clique no botão **Copiar para Arquivo** para iniciar o Assistente para Exportação de Certificados

![](img/cert-05.png)

{{< icon "arrow-right-circle" >}}Para continuar, clique em **Avançar**

{{< icon "arrow-right-circle" >}}No formato do arquivo de exportação selecione *X.509 codificado na base 64 (*.cer)* e clique no botão **Avançar**

![](img/cert-06.png)

{{< icon "arrow-right-circle" >}}Informe o caminho e nome do arquivo a ser exportado (Ex. C:\TEMP\root_certificate.cer)

{{< icon "arrow-right-circle" >}}Para finalizar, clique no botão **Concluir**

![](img/cert-07.png)

{{< icon "arrow-right-circle" >}}Repita os passos para exportar os demais certificados existentes na hierarquia de certificados, o certificado raiz (G2) e o intermediário (G3).

![](img/cert-08.png)

> NOTA: Neste exemplo serão gerados mais dois arquivos no diretório temporário (Ex. root_certificate.cer e intermediate_certificate.cer).

{{< icon "arrow-right-circle" >}}Acesse a pasta *Program* do diretório de instalação do Riversoft STCP OFTP Server (Ex. C:\STCPODT\Program) e em seguida, para gerar o _hash_, digite a linha de comando:

```
openssl x509 –noout –hash -in C:\TEMP\root_certificate.cer
```
<!-- ![](./imagem/img13.png) -->

{{< icon "arrow-right-circle" >}}Uma vez obtido o _hash_ do arquivo indicado, renomeie esse arquivo para o seu _hash_ correspondente e mais a extensão .**0** (Ex. _root_certificate.cer para F877295a.0_)

![](img/cert-09.png)

{{< icon "arrow-right-circle" >}}Repita os passos descritos acima, para renomeio dos demais arquivos exportados *(Ex. _root_certificate.cer e intermediate_certificate.cer_)*

<!-- ![](./imagem/img15.png) -->

{{< icon "arrow-right-circle" >}}Copie os arquivos renomeados para a pasta Certs do diretório de instalação do STCP OFTP Client *(Ex. C:\STCPCLT\Certs)*

## Referência

{{< callout="">}}
<a href="https://www.opservices.com.br/protocolos-de-rede/" target="_blank">Protocolos de rede</a> {{< icon "arrow-top-right-on-square" >}} &nbsp;
{{< /callout >}}