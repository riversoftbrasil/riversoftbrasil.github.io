---
title: "Banco de dados"
cascade:
  type: docs
weight: 10
toc: true
---
## Preparação do banco de dados

Antes de iniciar a instalação da plataforma STCP Gemini, o banco de dados deve estar previamente criado, disponível e acessível no ambiente.

A Riversoft disponibiliza os scripts necessários para criação e preparação das estruturas de banco de dados utilizadas pela plataforma, incluindo tabelas, relacionamentos, estruturas de configuração, dados iniciais e objetos destinados aos registros de log.

Execute os scripts correspondentes ao SGBD utilizado no ambiente antes de prosseguir com a instalação dos componentes da plataforma.

## Download dos scripts

Selecione o SGBD utilizado no ambiente para baixar o respectivo pacote de scripts de preparação do banco de dados:

- [Microsoft SQL Server](https://www.riversoft.com.br/downloads/db/STCPGemini_Scripts_SQLServer.zip)<span style="display:inline-block; margin-left:4px;">↗</span>
- [Oracle Database](https://www.riversoft.com.br/downloads/db/STCPGemini_Scripts_Oracle.zip)<span style="display:inline-block; margin-left:4px;">↗</span>
- [MySQL](https://www.riversoft.com.br/downloads/db/STCPGemini_Scripts_MySQL.zip)<span style="display:inline-block; margin-left:4px;">↗</span>
- [MariaDB](https://www.riversoft.com.br/downloads/db/STCPGemini_Scripts_MariaDB.zip)<span style="display:inline-block; margin-left:4px;">↗</span>

Cada pacote contém os scripts necessários para criação e preparação das estruturas utilizadas pela plataforma STCP Gemini.

Os scripts devem ser executados por um usuário com permissões suficientes para criar e alterar as estruturas do banco de dados.

> [!NOTE]
> A administração do ambiente de banco de dados é de responsabilidade da equipe de DBA da organização, incluindo provisionamento, disponibilidade, segurança, backup, manutenção, atualização e controle de acesso.

> [!IMPORTANT]
> Antes de executar os scripts, verifique se:
> 
> - o banco de dados correspondente ao ambiente está disponível;
> - o SGBD utilizado é compatível com a plataforma STCP Gemini;
> - o usuário utilizado possui as permissões necessárias;
> - a conexão com o banco de dados está disponível;
> - a execução está de acordo com as políticas de administração e segurança da organização.

## Execução dos scripts

Após baixar o pacote correspondente ao SGBD utilizado no ambiente, execute os scripts sequencialmente, respeitando a ordem indicada pela numeração dos arquivos.

A sequência de execução deve ser mantida, pois cada etapa prepara estruturas utilizadas pelas etapas seguintes.

| Ordem | Script | Finalidade |
| --- | --- | --- |
| 1 | `0-STCPGeminiCreateDatabase_<SGBD>.sql` | Cria e prepara os bancos de dados utilizados pela plataforma STCP Gemini. |
| 2 | `1-STCPGeminiCfg_<SGBD>.sql` | Cria as estruturas responsáveis pelas configurações da plataforma. |
| 3 | `2-STCPGeminiCfgInit_<SGBD>.sql` | Inicializa as estruturas e os dados necessários ao funcionamento das configurações. |
| 4 | `3-STCPGeminiLog_<SGBD>.sql` | Cria as estruturas utilizadas para armazenamento dos registros de log da plataforma. |

O sufixo `<SGBD>` varia de acordo com o banco de dados utilizado no ambiente.

> [!NOTE]
> Os nomes de bancos de dados utilizados nos scripts são apenas referências e podem ser alterados conforme os padrões definidos pela organização.
> 
> Ao utilizar nomes diferentes dos sugeridos, certifique-se de atualizar todas as referências correspondentes nos scripts e nas configurações da plataforma STCP Gemini.

### Exemplo de execução

Para Microsoft SQL Server, os scripts devem ser executados na seguinte ordem:

1. `0-STCPGeminiCreateDatabase_SQLServer.sql`
2. `1-STCPGeminiCfg_SQLServer.sql`
3. `2-STCPGeminiCfgInit_SQLServer.sql`
4. `3-STCPGeminiLog_SQLServer.sql`

> [!WARNING]
> Execute os scripts sequencialmente, utilizando uma ferramenta de administração compatível com o SGBD e um usuário com as permissões necessárias.
> 
> Prossiga para o próximo script somente após a conclusão bem-sucedida da etapa anterior. Caso ocorra algum erro, interrompa o processo e corrija a causa antes de continuar.

## Validação da execução

Após concluir a execução dos scripts, verifique se:

- todos os scripts foram executados sem erros;
- os bancos de dados e suas respectivas estruturas foram criados corretamente;
- os dados iniciais de configuração foram carregados;
- as estruturas destinadas aos registros de log estão disponíveis;
- os bancos de dados estão acessíveis;
- os bancos de dados podem ser acessados a partir do ambiente onde os componentes da plataforma serão instalados;
- o usuário que será utilizado pela plataforma possui acesso às estruturas criadas.

Com a preparação e a validação do banco de dados concluídas, prossiga para a configuração dos repositórios necessários à instalação dos componentes da plataforma STCP Gemini.