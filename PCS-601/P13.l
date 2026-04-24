%{
#include <stdio.h>
%}

%%

/* Valid Email */
^[a-zA-Z0-9]+(\.[a-zA-Z0-9]+)*@[a-zA-Z0-9]+\.[a-zA-Z]+$ 
{
    printf("%s is a valid email.\n", yytext);
}

/* Invalid Email */
^.*$ 
{
    printf("%s is not a valid email.\n", yytext);
}

/* Ignore newline */
\n { }

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