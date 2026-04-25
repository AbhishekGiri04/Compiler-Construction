%{
#include <stdio.h>
%}

%%

[a-zA-Z0-9]+(\.[a-zA-Z0-9]+)*@[a-zA-Z0-9]+\.[a-zA-Z]+   {
    printf("%s is a valid email.\n", yytext);
}

.+   {
    printf("%s is not a valid email.\n", yytext);
}

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