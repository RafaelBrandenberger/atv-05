%%
%standalone
%line
%column
%class ScannerEmail // nome da classe mudou

%{
    public String getLexema() {
        return yytext();
    }
%}

// Macros
usuario = [a-zA-Z0-9._%+-]+ // macro nova para email
arroba = @ // macro nova para email
dominio = [a-zA-Z0-9.-]+ // macro nova para email
ponto = \. // macro nova para email
tld = [a-zA-Z]{2,} // macro nova para email
email = {usuario}{arroba}{dominio}{ponto}{tld} // macro nova para email

%%

{email} {
    // mensagem mudou para email
    System.out.println(" -> Encontrei um <Token: EMAIL, Lexema: " + getLexema() + ", Linha: " + yyline + ", Coluna: " + yycolumn + ">");
}

[ \t\n\r]+ { /* ignora espaços, tabulações e quebras de linha */ }

. { /* ignora outros caracteres */ }