---
toc: false
breadcrumbs: false
---

## STCP Gemini Server e STCP Gemini Client

#### {{< icon "clock" >}} &nbsp;  Versão 6.6.16 (lançada em outubro de 2024)

- Correção no tratamento de controle da referência do arquivo na recepção.
- Melhorias no tratamento do filtro de tamanho do arquivo na transmissão.

#### {{< icon "clock" >}} &nbsp;  Versão 6.6.13 (lançada em outubro de 2024)

- Melhorias no tratamento de cálculo do hash em conexões OpenSSL 3.
- Melhorias no processo de reconexão automática ao banco de dados MySQL/MariaDB para manter a compatibilidade com as novas versões.
- Correções de compatibilidade com a biblioteca OpenSSL 3.x.x, alterando as funções que estavam descontinuadas.
- Implementação do algoritmo de derivação de senha Argon2id para autenticação, conforme as recomendações da OWASP.