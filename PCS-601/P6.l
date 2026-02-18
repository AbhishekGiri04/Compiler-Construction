%{
#include <stdio.h>

int ws = 0;
int tchar = 0;
int words = 0;
%}

%%
[a-zA-Z]+      { words++; tchar += yyleng; }
[ \t\n]        { ws++; tchar++; }
.              { tchar++; }
%%

int main()
{
    yyin = fopen("Input.txt", "r");
    yylex();

    printf("\nTotal no. of whitespaces: %d", ws);
    printf("\nTotal no. of words: %d", words);
    printf("\nTotal no. of characters: %d\n", tchar);

    return 0;
}

int yywrap()
{
    return 1;
}
