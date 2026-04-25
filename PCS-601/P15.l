%{
#include <stdio.h>
%}

DIGIT   [0-9]
LETTER  [a-zA-Z_]

%%

{DIGIT}+                { printf("Integer Constant: %s\n", yytext); }

{DIGIT}+"."{DIGIT}+     { printf("Float Constant: %s\n", yytext); }

{LETTER}({LETTER}|{DIGIT})*   { printf("Identifier: %s\n", yytext); }

[ \t\n]+                { /* ignore whitespace */ }

.                       { printf("Invalid Token: %s\n", yytext); }

%%

int main()
{
    printf("Enter input:\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}