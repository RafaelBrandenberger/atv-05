%%
%standalone
%line
%column
%class ScannerCPF // nome da classe mudou

%{
    public String getLexema() {
        return yytext();
    }
%}

// Macros
tres = [0-9]{3} // macro nova para cpf
dois = [0-9]{2} // macro nova para cpf
cpf = {tres} \. {tres} \. {tres} - {dois} // macro nova para cpf

%%

{cpf} {
    // mensagem mudou para cpf
    System.out.println(" -> Encontrei um <Token: CPF, Lexema: " + getLexema() + ", Linha: " + yyline + ", Coluna: " + yycolumn + ">");
}

[ \t\n\r]+ { /* ignora espaços, tabulações e quebras de linha */ }

. { /* ignora outros caracteres */ }