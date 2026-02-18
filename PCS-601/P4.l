%{
#include <stdio.h>
%}

%%
[0-9]*\.[0-9]+          { printf("Valid Floating Number: %s\n", yytext); }
(0|[-]?[1-9][0-9]*)     { printf("Valid Integer Number: %s\n", yytext); }
.*                      { printf("Invalid\n"); }
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
