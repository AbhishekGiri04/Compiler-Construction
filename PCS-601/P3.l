%{
#include <stdio.h>
int count = 1;
%}

%%

[a-zA-Z_][a-zA-Z0-9_]* {
    printf("%d) This is a Valid Identifier\n", count++);
}

\n { }        /* ignore newline */

.* {
    printf("%d) This is not a Valid Identifier\n", count++);
}

%%

int main()
{
    printf("Enter any identifier you want to check:\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}