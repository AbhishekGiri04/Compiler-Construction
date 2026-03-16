%{
#include <stdio.h>
#include <stdlib.h>

int yywrap() {
    return 1;
}
%}

DIGIT   [0-9]+

%%

[0-9]+[a-zA-Z]+[a-zA-Z0-9]* { 
    printf("%s is not a valid number.\n", yytext); 
}

{DIGIT} {
    int num = atoi(yytext);

    if(num % 2 == 0)
        printf("%s is an even number.\n", yytext);
    else
        printf("%s is an odd number.\n", yytext);
}

\n { }

. { printf("%s is not a valid number.\n", yytext); }

%%

int main()
{
    printf("Enter a string:\n");
    yylex();
    return 0;
}