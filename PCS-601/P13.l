%{
#include <stdio.h>
%}

%%

[a-zA-Z0-9]+(\.[a-zA-Z0-9]+)?@[a-zA-Z0-9]+\.[a-zA-Z]+      { printf("%s is a valid email.\n", yytext); }

[^ \t\n]+                                                   { printf("%s is not a valid email.\n", yytext); }

[ \t\n]+                                                    { /* ignore whitespace */ }

%%

int main()
{
    printf("Enter email strings (Ctrl+D to stop):\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}