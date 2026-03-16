%{
#include <stdio.h>
int a=0, b=0;
%}

%%

a       { a++; }
b       { b++; }
\n      {
            if(a%2==0 && b%2==0)
                printf("Accepted\n");
            else
                printf("Not Accepted\n");
            a=0; b=0;
        }

.       { }  /* ignore other characters */

%%

int main()
{
    printf("Enter strings (Press Enter for new line, Ctrl+D to stop):\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}