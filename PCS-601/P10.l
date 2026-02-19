%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int yywrap() {
    return 1;
}
%}

DIGIT   [0-9]+

%%

{DIGIT} {
            int num = atoi(yytext);
            if(num % 2 == 0)
                printf("%s is an even number.\n", yytext);
            else
                printf("%s is an odd number.\n", yytext);
        }

[0-9]+[a-zA-Z]+[a-zA-Z0-9]* {
            printf("%s is not a valid number.\n", yytext);
        }

.|\n   ;

%%

int main() {
    printf("Enter a string: ");
    yylex();
    return 0;
}
