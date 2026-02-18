%{
#include <stdio.h>
%}

IDR [_a-zA-Z][_a-zA-Z0-9]*

%%
[,;(){}]        { printf("\nSeparator: %s", yytext); }
[-+/%=]         { printf("\nOperator: %s", yytext); }
int|float|double|if|else|for|while { printf("\nKeyword: %s", yytext); }
[0-9]+          { printf("\nConstant: %s", yytext); }
{IDR}           { printf("\nIdentifier: %s", yytext); }
[ \t\n]+        ;
.               { printf("\nAny other char: %s", yytext); }
%%

int main()
{
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
