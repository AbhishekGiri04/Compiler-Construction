%{
#include <stdio.h>
%}

/* Definition Section */
IDR    [_a-zA-Z][_a-zA-Z0-9]*

%%

/* Keywords */
int|float|double|if|else|for|while
{
    printf("%s is a keyword.\n", yytext);
}

/* Separators */
[,;(){}]
{
    printf("%s is a separator.\n", yytext);
}

/* Operators */
[-+*/%=]
{
    printf("%s is an operator.\n", yytext);
}

/* Constants (numbers) */
[0-9]+
{
    printf("%s is a constant.\n", yytext);
}

/* Identifiers */
{IDR}
{
    printf("%s is an identifier.\n", yytext);
}

/* Ignore whitespace */
[ \t\n]+   { }

/* Invalid characters */
.
{
    printf("%s is an invalid character.\n", yytext);
}

%%

int main()
{
    printf("Write Your C Program for Tokenizing:\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}