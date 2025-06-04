/* Alguns métodos e variáveis disponíveis:
 * int yyline: armazena o número da linha atual.
 * int yycolumn: armazena o número da coluna atual na linha atual.
 * String yytext(): método que retorna a sequência de caracteres que foi casada com a regra.
 * int yylength(): método que retorna o comprimento da sequência de caracteres que foi casada com a regra.
 */

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

letra = [a-zA-Z]
numero = [0-9]
digito = {numero}+
identificador = {letra}({letra}|{numero})*
data = [0-3][0-9]/[0-1][0-9]/[0-9]{4}

%%

[data]          {System.out.println(" -> Encontrei um <Token: DATA, Lexema: "          + getLexema() + ", Tamanho: " + yylength() + ", Linha: " + yyline + ", Coluna: " + yycolumn + ">");}
{digito}        {System.out.println(" -> Encontrei um <Token: DIGITO, Lexema: "        + getLexema() + ", Tamanho: " + yylength() + ", Linha: " + yyline + ", Coluna: " + yycolumn + ">");}
{identificador} {System.out.println(" -> Encontrei um <Token: IDENTIFICADOR, Lexema: " + getLexema() + ", Tamanho: " + yylength() + ", Linha: " + yyline + ", Coluna: " + yycolumn + ">");}