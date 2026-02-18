%{
#include <stdio.h>
int count = 1;
%}

%%

[a-zA-Z_][a-zA-Z0-9_]*\n   {
                            printf("%d) This is a Valid Identifier\n", count++);
                          }

.*\n                      {
                            printf("%d) This is not a Valid Identifier\n", count++);
                          }

%%

int main()
{
    printf("Enter identifiers (Press Ctrl+D to stop):\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
