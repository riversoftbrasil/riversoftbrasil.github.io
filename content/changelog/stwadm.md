---
toc: false
breadcrumbs: false
---
## STCP OFTP Web Admin

### {{< icon "clock" >}} &nbsp; Versão 5.2.6.1 (lançada em janeiro de 2022)

- Correção da falha ao exportar dados dos relatórios Frequência de Conexão e Transferência.
- Correção do problema que impedia a seleção do servidor para supervisão (Content Security Policy).

### {{< icon "clock" >}} &nbsp; Versão 5.2.6.0 (lançada em novembro de 2021)

- Compatibilidade com versões 8.X do PHP.
- Ajustes na exibição de caracteres especiais nos cadastros de códigos de erros e eventos.
- Correção da falha ao acessar o arquivo de configuração stcpmon\*.ini em ambiente Linux.
- Exibição da identificação da rede (TCPIP_X) ao monitorar as transferências em andamento.
- Correção da falha que desbloqueava a caixa postal ao consultar detalhes em Consultas - Cadastro - Usuários (Caixa Postal).

### {{< icon "clock" >}} &nbsp; Versão 5.2.5.1 (lançada em agosto de 2021)

- Melhorias no tratamento das políticas e complexidade de senha para Operadores.
- Visualização das informações sobre as políticas e complexidade de senha no cadastro de Operadores.

### {{< icon "clock" >}} &nbsp; Versão 5.2.5.0 (lançada em março de 2021)

- Correção do problema de acesso ao menu Manutenção.
- Correção do relatório Estatísticas (tipo Anual) que não retornava dados corretamente.
- Correção do gráfico Últimos 12 meses que não retornava dados corretamente.
- Melhorias no tratamento da expiração de sessão.
- Compatibilidade com versões 7.4.X do PHP.
- Melhorias na exportação dos relatórios, que a partir dessa versão passam a ser gerados em formato CSV, possibilitando a leitura dos dados em diferentes aplicativos e plataformas.

### {{< icon "clock" >}} &nbsp; Versão 5.2.4.0 (lançada em dezembro de 2020)

- Implementação para tratamento das vulnerabilidades Blind SQL Injection, Cross Site Scripting, Cross Site Request Forgery e Clickjacking.
- Melhorias no tratamento da expiração de sessão.
- Implementação dos gráficos utilizando a biblioteca PHPlot.
- Compatibilidade com versões 7.3.X do PHP.

### {{< icon "clock" >}} &nbsp; Versão 5.2.0.0 (lançada em abril de 2020)

- Correção da consulta e exibição de dados no gráfico Últimos 30 dias do relatório de transferência.
- Correção da consulta e exibição de dados no gráfico Últimos 12 meses do relatório de transferência.
- Melhoria na exibição do nome do arquivo (54 posições) na consulta de histórico de transferências

### {{< icon "clock" >}} &nbsp; Versão 5.1.0.8 (lançada em maio de 2019)

- Implementação para tratamento de vulnerabilidades X-XSS-Protection e X-Content-Type-Options.
- Melhorias no tratamento da expiração de sessão.
- Compatibilidade com versões 7.3.X do PHP.

### {{< icon "clock" >}} &nbsp; Versão 5.1.0.6 (lançada em agosto de 2018)

- Compatibilidade com versões 7.2.X do PHP.

### {{< icon "clock" >}} &nbsp; Versão 5.1.0.4 (lançada em abril de 2018)

- Implementação de relatório para obtenção da listagem de versões do STCP Client que se conectam ao
  servidor STCP.
- Melhorias na consulta dos dados novos gráficos (Últimas 24 Horas, Últimos 7 dias, Últimos 30 dias e Últimos 12 meses)

### {{< icon "clock" >}} &nbsp; Versão 5.1.0.3 (lançada em março de 2018)

- Implementação de novos gráficos (Últimas 24 Horas, Últimos 7 dias, Últimos 30 dias e Últimos 12 meses).

### {{< icon "clock" >}} &nbsp; Versão 5.1.0.2 (lançada em fevereiro de 2018)

- Implementação dos atributos de segurança Cookie Secure e HTTPOnly.
- Atualização da versão do PHP Excel.
- Melhorias no desempenho da exportação de dados para Excel

### {{< icon "clock" >}} &nbsp; Versão 5.1.0.1 (lançada em janeiro de 2018)

- Melhorias na exibição dos dados no relatório de histórico de transferência.
- Melhorias na exibição dos dados no relatório de auditoria de roteamentos.

### {{< icon "clock" >}} &nbsp; Versão 5.1.0.0 (lançada em novembro de 2017)

- Melhorias no tratamento e exibição dos dados retornados pelo servidor STCP ao utilizar a consulta de usuários (Consultas - Cadastros - Usuários (Caixa postal)).
- Exibição do status de Acesso na consulta de usuários quando a opção Controle de Autenticação (STCP) é utilizada pelo servidor STCP.
- Compatibilidade com versões anteriores do servidor STCP para exibição das informações da seção Control retornadas pela interface stcpmon.

### {{< icon "clock" >}} &nbsp; Versão 5.0.0.4 (lançada em setembro de 2017)

- Compatibilidade com versões mais recentes do PHP.
- Correção na exibição de dados utilizando o charset ISO-8859-1
- Compatibilidade com versões mais recentes do stcpmon que apresenta mudanças no retorno dos dados no modulo de Consulta - Cadastro - Servidores
- Correção da função de formatação de data na seção Control na consulta do Usuário.
- Modificação na exibição do nome do arquivo na consulta de histórico de transferências (Consulta - Transferência – Histórico) removendo a informação do timestamp em caso de erro no processo de transmissão ou recepção.

### {{< icon "clock" >}} &nbsp; Versão 5.0.0.1 (lançada em fevereiro de 2017)

- Correção do relatório de auditoria de roteamentos que não apresentava todos os dados na exportação para XLS ao utilizar banco de dados Oracle ou MySQL.
- Correção do relatório de histórico de transferência que não listava corretamente os detalhes da transferência quando são utilizados caracteres especiais (Ex. #,&) no nome do arquivo

### {{< icon "clock" >}} &nbsp; Versão 5.0.0.0 (lançada em dezembro de 2016)

- Mudanças de compatibilidade com versões anteriores do PHP.
- Melhorias no suporte a múltiplos navegadores (Cross-browser).
- Atualização do módulo PHPExcel.
- Visualização dos parâmetros da seção Control na consulta do Usuário.

### {{< icon "clock" >}} &nbsp; Versão 4.4.0.0 (lançada em setembro de 2015)

- Suporte para geração de relatórios em XLS e PDF.
- Implementação do Relatório Frequência de Transferência.
- Implementação do Relatório Frequência de Conexão.
- Suporte a múltiplos navegadores (Cross-browser).
- Correção do módulo de limpeza de diretório por usuário.
- Implementação da autenticação por LDAP.
- Registro no log de operadores do reset de senha da caixa postal.
- Registro no log de operadores do reset do hash da caixa postal.
- Registro no log quando for alterada as configurações de grupo os nomes dos operadores.
- Registro no log quando for alterada as configurações de operador os nomes dos grupos.
- Compatibilização para atender requisitos das novas versões do PHP.
