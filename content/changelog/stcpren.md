---
toc: false
breadcrumbs: false
slug: stcprename
---

## STCP Rename

#### {{< icon "clock" >}} &nbsp;  Versão 5.3.18.0 (lançada em novembro de 2024)

- Aumento do limite de caracteres para 1024 (considerando a expansão das variáveis) nos parâmetros ExecProgAfter, ExecProgBefore e ExecProgError.
  
#### {{< icon "clock" >}} &nbsp;  Versão 5.3.6.1 (lançada em junho de 2022)

- Aumento da quantidade máxima de regras de validação que podem ser criadas no STCPRenCfg.
- Aumento do número máximo de caracteres no campo senha do recurso (guia Acesso) no STCPRenCfg.
  
#### {{< icon "clock" >}} &nbsp;  Versão 5.3.6.0 (lançada em abril de 2022)

- Limite do número de caracteres permitidos nos campos DestinationUser e SourceUser do configurador.
 
#### {{< icon "clock" >}} &nbsp;  Versão 5.2.4.0 (lançada em agosto de 2020)

- Melhorias na gravação de log do processo de varredura quando o diretório está sem acesso.
- Aumento do número de caracteres dos campos DirRegEx e FileRegEx no configurador.

#### {{< icon "clock" >}} &nbsp;  Versão 5.0.0.1 (lançada em fevereiro de 2017)

- Melhorias para que as linhas em branco, existentes no arquivo externo de expressões regulares, não sejam interpretadas pela aplicação.
- Melhorias no processo de compilação da expressão regular das regras. A expressão regular não será compilada se a regra estiver desabilitada.

#### {{< icon "clock" >}} &nbsp;  Versão 5.0.0.0 (lançada em dezembro de 2016)

- Melhorias na validação de arquivos e diretórios, onde a partir de agora, o usuário pode indicar um arquivo externo com as expressões regulares desejadas.