---
linkTitle: Execução
layout: docs
sidebar:
  exclude: false
weight: 4
prev:
next:
---
## Como executar o STCPSigner

### Linha de comando

```
stcpsigner.exe cmd [opções]
```

Comando (cmd)|  Descrição
:---         | :---
crypt        | Criptografa os dados.
decrypt      | Decriptografa os dados.
sign         | Assina digitalmente.
verify       | Verifica a assinatura digital.
sign-crypt   | Assina digitalmente e criptografa.
decrypt-verify| Decriptografa os dados e verifica assinatura.
genkey       | Gera o par de chaves pública/privativa.
delkey       | Remove o par de chaves pública/privativa.
expkey       | Exporta o par de chaves pública/privativa.
impkey       | Importa o par de chaves pública/privativa.
gencertself  | Gera certificado auto-assinado.
gencertreq   | Gera requisição de certificado (CSR – PKCS#10).
delcert      | Remove certificado.
impcert      | Importa certificado de um arquivo.
expcert      | Exporta o certificado para um arquivo.
delcertstore | Deleta armazenamento de certificados.
listprov     | Mostra os provedores de criptografia.
listcont     | Mostra os armazenamentos de chave de criptografia.
listcerts    | Mostra os certificados.
listcrls     | Mostra a lista de certificados revogados.
pkcs7convert | Converte o formato do arquivo entre DER e BASE64.
addoidinfo   | Adiciona informação para código OID.
deloidinfo   | Remove informação para código OID.
listoidinfo  | Mostra os códigos OID cadastrados.

### Controle das chaves

[Opções]| Descrição
:---    | :---
-a      | Nome do provedor de criptografia.
-b      | Nome do container.
-c      | Tipo do provedor (full, aes, dss ou fortezza). /Default: full
-d      | Tamanho da chave (512,1024,2048 ou 4096). /Default: 512
-e      | Senha da chave privativa ou PIN para token/smartcard.
-f      | Algoritmo de criptografa da chave privativa (des, 3des, rc2, rc4, aes ou aes256). /Default: 3des

### Controle do certificado

[Opções] | Descrição
:---     | :---
-g       | Nome do store dos certificados.
-h       | RDN para geração da requisição do certificado.
-i       | Assunto do certificado.
-I       | Assunto do certificado de criptografia.
-j       | Localização do certificado (user, system, ou services). /Default: user

### Controle da criptografia

[Opções] | Descrição
:---     | :---
-k       | Algoritmo de criptografia do arquivo (none, 3des, rc4, rc2cbc, aes128, aes256). /Default: 3des
-l       | Tipo do conteúdo do arquivo (plain, data, enveloped ou signed). /Default: plain
-r       | Algoritmo de hash (md5 ou sha1). /Default: sha1

### Outros

[Opções] | Descrição
:---     | :---
-m       | Tamanho do buffer.
-n       | Nome do arquivo de entrada. /Default: stdin
-o       | Nome do arquivo de saída. /Default: stdout
-p       | Tipo do arquivo de entrada (pem ou der). /Default: der
-q       | Tipo do arquivo de saída (pem ou der). /Default: der
-s       | Habilita proteção da chave privativa.
-t       | Habilita exportação da chave privativa.
-u       | Habilita verificação da cadeia de certificados (chain).
-U       | Opções para verificação de revogação dos certificados.
CheckChain| Verifica CRL para toda a cadeia.
CheckChainCacheOnly| Verifica CRL para toda a cadeia (somente cache).
CheckEndCert| Verifica CRL para o último certificado.
CheckEndCertCacheOnly| Verifica CRL para o último certificado (somente cache).
CheckChainExcludeRoot| Verifica CRL para a cadeia sem o certificado Root.
CheckChainExcludeRootCacheOnly| Verifica CRL para a cadeia sem o certificado Root (somente cache).
-v        | Descrição do arquivo que será informada no atributo '1.3.6.1.4.1.311.88.2.2' do PKCS#7.
-x        | Nome do diretório temporário.
-y        | Nome do arquivo que será informado no atributo '1.3.6.1.4.1.311.88.2.1' do PKCS#7.
-z        | Inibe verificação da assinatura do executável.
-X        | Inibe verificação do certificado de assinatura no armazenamento local.
-T        | Habilita validação do certificado pela data e hora contida no envelope PKCS#7.
-O        | Habilita sobreposição do arquivo.
-?        | Ajuda.
