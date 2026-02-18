%{
#include <stdio.h>
#include <stdlib.h>

int ws = 0;
int words = 0;
int tchar = 0;
%}

%%

[a-zA-Z]+      { words++; tchar += yyleng; }

[ \t\n]        { ws++; tchar++; }

.              { tchar++; }

%%

int main()
{
    yyin = fopen("Input.txt", "r");

    if (yyin == NULL)
    {
        printf("Cannot open file\n");
        return 1;
    }

    yylex();

    printf("The number of total characters in the given input file is: %d\n", tchar);
    printf("The number of total words in the given input file is: %d\n", words);
    printf("The number of total white spaces in the given input file is: %d\n", ws);

    fclose(yyin);
    return 0;
}

int yywrap()
{
    return 1;
}
