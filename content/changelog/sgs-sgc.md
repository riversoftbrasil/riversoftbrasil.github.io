---
toc: false
breadcrumbs: false
slug: stcpgemini-linux
---

## STCP Gemini Server e STCP Gemini Client

#### {{< icon "clock" >}} &nbsp;  Versão 6.6.18 (lançada em março de 2025)

- Correção para o problema que ocorria quando a descrição da instância, rede, usuário ou agenda, excedia 255 caracteres, causando a  interrupção da leitura dos dados sem retornar erro.
- Correção do problema na instalação dos serviços no systemctl, nas versões: Oracle 9, RedHat 9 e Rocky 9.
- Correção do erro de execução quando utilizado aspas nos parâmetros do comando externo.
- Melhoria no tratamento do tamanho máximo do arquivo na transmissão.
- Correção do problema ao criar referência de arquivo sem timestamp.

#### {{< icon "clock" >}} &nbsp;  Versão 6.6.16 (lançada em outubro de 2024)

- Correção no tratamento de controle da referência do arquivo na recepção.
- Melhorias no tratamento do filtro de tamanho do arquivo na transmissão.

#### {{< icon "clock" >}} &nbsp;  Versão 6.6.13 (lançada em outubro de 2024)

- Melhorias no tratamento de cálculo do hash em conexões OpenSSL 3.
- Melhorias no processo de reconexão automática ao banco de dados MySQL/MariaDB para manter a compatibilidade com as novas versões.
- Correções de compatibilidade com a biblioteca OpenSSL 3.x.x, alterando as funções que estavam descontinuadas.
- Implementação do algoritmo de derivação de senha Argon2id para autenticação, conforme as recomendações da OWASP.