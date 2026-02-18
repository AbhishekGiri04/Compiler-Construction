%{
#include <stdio.h>
%}

%%
^[a-zA-Z_][a-zA-Z0-9_]*$   { printf("This is a Valid Identifier\n"); }
^.*$                      { printf("This is not a Valid Identifier\n"); }
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
