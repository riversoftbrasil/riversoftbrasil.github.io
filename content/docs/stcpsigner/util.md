---
linkTitle: Utilização
layout: docs
sidebar:
  exclude: false
weight: 3
prev:
next:
draft: false
lastmod: 2024-04-15
---
## Gerar um par de chaves

Para criar o par de chaves pública/privativa padrão RSA com 1024 bits de acesso exclusivo pelo administrador ou o system account:
O `<nome do armazenamento>` é de livre escolha.

```
Stcpsigner genkey -b Teste.Key -d 1024 -j system
```

## Gerar um certificado auto-assinado

Para criar um certificado auto-assinado para o par de chaves pública/privativa:

```
Stcpsigner gencertself -b Teste.Key -j system -h "CN=STCPSigner.Teste, O=EMPRESA, OU=EDI, C=BR,L=Sao Paulo"
```

## Exportar o certificado

Para exportar o certificado do par de chaves pública/privativa para um arquivo do tipo PEM:

```
Stcpsigner expcert -j system -i "STCPSigner.Teste" -o stcpsigner.cer -q pem
```

## Assinar um arquivo

Para assinar um arquivo:

```
Stcpsigner sign -j system -i "STCPSigner.Teste" -n <arquivo de entrada> -o <arquivo de saída>
```

## Verificar um arquivo assinado

Para verificar um arquivo assinado:

```
Stcpsigner verify -j system -i "STCPSigner.Teste" -n <arquivo de entrada> -o <arquivo de saída>
```

## Encriptar um arquivo

Para encriptar um arquivo:

```
Stcpsigner crypt -j system -i "STCPSigner.Teste" -n <arquivo de entrada> -o <arquivo de saída>
```

## Decriptar um arquivo

Para decriptar um arquivo:

```
Stcpsigner decrypt -j system -i "STCPSigner.Teste" -n <arquivo de entrada> -o <arquivo de saída>
```

## Remover a chave privativa

Para remover a chave privativa:
O <nome do armazenamento> é de livre escolha.

```
Stcpsigner delkey -b "Teste.Key" -j system
```

## Remover o certificado

Para remover o certificado:

```
Stcpsigner delcert -i "STCPSigner.Teste" -j system
```
