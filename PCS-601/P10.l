%{
#include <stdio.h>
%}

/* Definitions */

DIGIT      [0-9]
LETTER     [a-zA-Z_]
ID         {LETTER}({LETTER}|{DIGIT})*
NUMBER     {DIGIT}+
STRING     \"[^\"]*\"
CHARLIT    \'[^\']\'

%%

/* Keywords (must come before ID) */
int|float|double|char|if|else|for|while|return|void
{
    printf("KEYWORD : %s\n", yytext);
}

/* String literals */
{STRING}
{
    printf("STRING : %s\n", yytext);
}

/* Character literals */
{CHARLIT}
{
    printf("LITERAL : %s\n", yytext);
}

/* Numeric constants */
{NUMBER}
{
    printf("CONSTANT : %s\n", yytext);
}

/* Identifiers */
{ID}
{
    printf("IDENTIFIER : %s\n", yytext);
}

/* Ignore whitespace */
[ \t\n]+   { }

/* Unknown tokens */
.
{
    printf("UNKNOWN : %s\n", yytext);
}

%%

int main()
{
    printf("Enter C code (Press Ctrl+D to stop):\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}