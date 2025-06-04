%%
%standalone
%line
%column
%class Scanner

%{
    public String getLexema() {
        return yytext();
    }
%}

// Macros
hora = (0[0-9]|1[0-9]|2[0-3])
minuto = [0-5][0-9]
HORA = {hora}:{minuto}

%%

{HORA} {
    System.out.println(" -> Encontrei uma <Token: HORA, Lexema: " + getLexema() + ", Tamanho: " + yylength() + ", Linha: " + yyline + ", Coluna: " + yycolumn + ">");
}

[0-9]+ {
    System.out.println(" -> Encontrei um <Token: NUMERO, Lexema: " + getLexema() + ">");
}

.|\n { /* Ignora outros caracteres */ }