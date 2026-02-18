%{
#include <stdio.h>
%}

/* Definitions */
DIGIT      [0-9]
LETTER     [a-zA-Z_]
ID         {LETTER}({LETTER}|{DIGIT})*
NUMBER     {DIGIT}+
STRING     \"[^\"]*\"
CHARLIT    \'[^\']\'

%%

int|float|double|char|if|else|for|while|return|void {
    printf("KEYWORD : %s\n", yytext);
}

{STRING} {
    printf("STRING : %s\n", yytext);
}

{CHARLIT} {
    printf("LITERAL : %s\n", yytext);
}

{NUMBER} {
    printf("CONSTANT : %s\n", yytext);
}

{ID} {
    printf("IDENTIFIER : %s\n", yytext);
}

[ \t\n]+ { }   /* Ignore whitespace */

. {
    printf("UNKNOWN : %s\n", yytext);
}

%%

int yywrap() {
    return 1;
}

int main() {
    printf("Enter C code (Press Ctrl+D to stop):\n");
    yylex();
    return 0;
}
