%{
#include <stdio.h>
#include <stdlib.h>
%}

%%

/* Invalid number (contains letters) */
^[0-9]+[a-zA-Z]+[a-zA-Z0-9]*$ 
{
    printf("%s is not a valid number.\n", yytext);
}

/* Valid integer number */
^[0-9]+$ 
{
    int num = atoi(yytext);

    if(num % 2 == 0)
        printf("%s is an even number.\n", yytext);
    else
        printf("%s is an odd number.\n", yytext);
}

/* Any other invalid input */
^.*$ 
{
    printf("%s is not a valid number.\n", yytext);
}

/* Ignore newline */
\n { }

%%

int main()
{
    printf("Enter numbers (Press Ctrl+D to stop):\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}