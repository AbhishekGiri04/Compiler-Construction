%{
#include <stdio.h>
%}

IDR    [_a-zA-Z][_a-zA-Z0-9]*

%%

int|float|double|if|else|for|while { printf("%s is a keyword.\n", yytext); }
[,;(){}] { printf("%s is a separator.\n", yytext); }
[-+*/%=] { printf("%s is an operator.\n", yytext); }
[0-9]+ { printf("%s is a constant.\n", yytext); }
{IDR} { printf("%s is an identifier.\n", yytext); }
[ \t\n]+ { }
. { printf("%s is an invalid character.\n", yytext); }

%%

int main() {
    printf("Write Your C Program for Tokenizing:\n");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
