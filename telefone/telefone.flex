%%
%standalone
%line
%column
%class ScannerTelefone

%{
    public String getLexema() {
        return yytext();
    }
%}

// Macros
pais = [0-9]{2} \+
ddd = \( [0-9]{3} \)
nove = 9
quatro = [0-9]{4}
telefone = {pais} \s*{ddd} \s*{nove} \s{1}[0-9]{4}-{quatro}

%%

{telefone} {
    System.out.println(" -> Encontrei um <Token: TELEFONE, Lexema: " + getLexema() + ", Linha: " + yyline + ", Coluna: " + yycolumn + ">");
}

[ \t\n\r]+ { /* Ignora espaços, tabulações e quebras de linha */ }

. { /* Ignora outros caracteres */ }