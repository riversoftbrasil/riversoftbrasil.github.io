---
title: "Segurança"
weight: 11
cascade:
  type: docs
---

## Segurança da plataforma

A plataforma STCP Gemini utiliza mecanismos de segurança para proteger os dados durante os processos de transferência de arquivos, garantindo autenticidade, confidencialidade, integridade e rastreabilidade das informações.

A segurança da plataforma é baseada no uso de protocolos seguros, certificados digitais e tecnologias de criptografia simétrica e assimétrica.

Entre os principais recursos de segurança estão:

- Suporte aos protocolos TLS 1.2 e TLS 1.3
- Utilização de certificados digitais
- Criptografia simétrica e assimétrica
- Mecanismos de autenticação e assinatura digital
- Proteção da confidencialidade e integridade dos dados
- Políticas de segurança para controle de autenticação
- Integração com soluções externas de proteção de dados, como PGP, GPG e Voltage
- Auditoria e rastreabilidade das operações de transferência

A plataforma utiliza algoritmos criptográficos modernos para proteger as informações durante as transferências:

| Finalidade | Algoritmos |
| --- | --- |
| Autenticidade | RSA, ECDSA, EdDSA |
| Confidencialidade | AES-GCM, ChaCha20-Poly1305, AES-128, AES-256 |
| Integridade | SHA-256, SHA-384, SHA-512 |

Os mecanismos utilizados podem variar conforme o protocolo de transferência e as políticas de segurança configuradas no ambiente.

## TLS 1.2 e TLS 1.3

TLS (Transport Layer Security) é utilizado como base para as conexões seguras da plataforma STCP Gemini.

A plataforma oferece suporte a:

- TLS 1.2
- TLS 1.3
- Configuração personalizada de cipher suites
- Definição de políticas de segurança

Os principais algoritmos suportados incluem:

| Finalidade | Algoritmos |
| --- | --- |
| Autenticidade | RSA, ECDSA, EdDSA (Ed25519) |
| Confidencialidade | AES-GCM 128/256, ChaCha20-Poly1305 |
| Integridade | SHA-256, SHA-384, SHA-512 |

O uso de TLS permite proteger as informações trafegadas entre os componentes e sistemas envolvidos na transferência de arquivos.

## OFTP 2.0

O **OFTP (Odette File Transfer Protocol)** oferece mecanismos de proteção específicos para operações de transferência de arquivos.

O protocolo suporta:

- Criptografia simétrica e assimétrica
- Uso de certificados digitais
- Compressão
- Configuração personalizada de cipher suites
- Definição de políticas de segurança

Os algoritmos suportados incluem:

| Finalidade | Algoritmos |
| --- | --- |
| Autenticidade | RSA, ECDSA, EdDSA (Ed25519) |
| Confidencialidade | AES-128, AES-256 |
| Integridade | SHA-256, SHA-384, SHA-512 |

## SFTP

O **SFTP (SSH File Transfer Protocol)** utiliza um canal seguro baseado em SSH-2 para realizar a transferência de arquivos.

A autenticação pode ser realizada utilizando:

- Usuário e senha
- Par de chaves pública e privada

O protocolo permite a negociação dos algoritmos e das políticas de segurança utilizadas durante o estabelecimento da conexão.

Os principais algoritmos suportados incluem:

| Finalidade | Algoritmos |
| --- | --- |
| Troca de chaves | Curve25519, ECDH |
| Criptografia | AES-GCM, AES-CTR, ChaCha20-Poly1305 |
| Integridade (HMAC) | SHA2-256, SHA2-512 |

## AS2

O **AS2 (Applicability Statement 2)** fornece recursos de segurança voltados à troca de documentos e arquivos entre organizações.

O protocolo utiliza:

- TLS 1.2 e TLS 1.3
- Certificados digitais X.509
- S/MIME
- MDN (Message Disposition Notification)
- MIC (Message Integrity Check)
- Assinatura digital

O uso de MDN permite comprovar a entrega da mensagem, podendo ser utilizado de forma síncrona ou assíncrona e com assinatura digital.

O protocolo também oferece mecanismos de não repúdio de envio e recebimento por meio da combinação de MIC e assinatura digital.

São suportados diferentes formatos de conteúdo, incluindo:

- EDI
- EDIFACT
- X12
- XML
- JSON
- Arquivos binários
- Outros tipos de payload

Os principais algoritmos e tecnologias utilizados são:

| Finalidade | Algoritmos / Tecnologias |
| --- | --- |
| Autenticidade e assinatura | RSA, ECDSA |
| Confidencialidade | AES-128, AES-256 |
| Integridade / MIC | SHA-256, SHA-384, SHA-512 |
| Transporte | TLS 1.2, TLS 1.3 |

{{< callout type="info" >}}
A disponibilidade e a configuração dos algoritmos criptográficos podem variar conforme o protocolo utilizado, a versão da plataforma e as políticas de segurança definidas para o ambiente.
{{< /callout >}}

## Acesso e Identidade

A plataforma STCP Gemini oferece recursos de autenticação e autorização voltados à proteção do acesso aos seus serviços e interfaces.

Esses mecanismos permitem integrar o STCP Gemini aos serviços de identidade utilizados pela organização, centralizando o controle de acesso e reforçando as políticas de segurança do ambiente.

### Single Sign-On (SSO)

O STCP Gemini oferece suporte a **Single Sign-On (SSO)**, permitindo a integração com provedores de identidade corporativa.

Entre os provedores compatíveis estão:

- Microsoft Entra ID
- Okta
- Google
- Keycloak
- AWS Cognito
- Outros provedores compatíveis

Com o SSO, a autenticação dos usuários pode ser centralizada no provedor de identidade da organização, reduzindo a necessidade de gerenciamento de credenciais diretamente na plataforma.

### Protocolos de autenticação e autorização

A plataforma oferece suporte aos seguintes protocolos:

- **SAML 2.0**
- **OAuth 2.0**

Esses protocolos permitem integrar o STCP Gemini aos mecanismos corporativos de autenticação e autorização adotados pela organização.

### Tokens de acesso

O STCP Gemini utiliza **JWT (JSON Web Token)** para representar informações de autorização de forma segura entre os componentes e serviços da plataforma.

Os tokens são utilizados para controlar o acesso aos recursos conforme as permissões concedidas ao usuário ou aplicação autenticada.

### Autenticação multifator

A plataforma oferece suporte a mecanismos de **MFA/2FA (Multi-Factor Authentication / Two-Factor Authentication)**, adicionando uma camada adicional de proteção ao processo de autenticação.

Os métodos suportados incluem:

- OTP (One-Time Password)
- Aplicativos autenticadores
- Microsoft Authenticator
- Google Authenticator
- SMS
- E-mail

{{< callout type="info" >}}
A disponibilidade dos métodos de autenticação pode variar de acordo com o provedor de identidade utilizado e com as políticas de segurança configuradas pela organização.
{{< /callout >}}

### Controle de acesso

A integração com mecanismos corporativos de identidade permite aplicar políticas centralizadas de autenticação e autorização, auxiliando no controle do acesso aos recursos da plataforma.

A definição de usuários, grupos, permissões e políticas de acesso deve ser realizada de acordo com as regras de segurança estabelecidas pela organização.



