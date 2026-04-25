%{
#include <stdio.h>
#include <stdlib.h>
%}

DIGIT   [0-9]+

%%

[0-9]+[a-zA-Z][a-zA-Z0-9]*   {
    printf("%s is not a valid number.\n", yytext);
}

[0-9]+   {
    int num = atoi(yytext);

    if(num % 2 == 0)
        printf("%s is an even number.\n", yytext);
    else
        printf("%s is an odd number.\n", yytext);
}

[a-zA-Z0-9]+   {
    printf("%s is not a valid number.\n", yytext);
}

\n   { }

%%

int main()
{
    printf("Enter numbers (Ctrl+D to stop):\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}