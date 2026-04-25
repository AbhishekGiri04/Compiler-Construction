%{
#include <stdio.h>
%}

DIGIT   [0-9]
LETTER  [a-zA-Z_]
ID      {LETTER}({LETTER}|{DIGIT})*
NUMBER  {DIGIT}+
STRING  \"[^\"]*\"
CHARLIT \'[^\']\'

%%

(int|float|double|char|if|else|for|while|return|void)   { printf("KEYWORD : %s\n", yytext); }

{STRING}   { printf("STRING : %s\n", yytext); }

{CHARLIT}  { printf("LITERAL : %s\n", yytext); }

{NUMBER}   { printf("CONSTANT : %s\n", yytext); }

{ID}       { printf("IDENTIFIER : %s\n", yytext); }

[ \t\n]+   { }

.          { printf("UNKNOWN : %s\n", yytext); }

%%

int main()
{
    printf("Enter C code (Ctrl+D to stop):\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}