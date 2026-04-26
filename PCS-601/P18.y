%{
#include <stdio.h>
#include <stdlib.h>

int yylex();
void yyerror(const char *s);
%}

%token NUMBER

%left '+' '-'
%left '*' '/'

%%

input:
      expr '\n'   { printf("Valid Expression\n"); }
    ;

expr:
      expr '+' expr   { printf("Addition\n"); }
    | expr '-' expr   { printf("Subtraction\n"); }
    | expr '*' expr   { printf("Multiplication\n"); }
    | expr '/' expr   { printf("Division\n"); }
    | '(' expr ')'
    | NUMBER
    ;

%%

void yyerror(const char *s)
{
    printf("Invalid Expression\n");
}

int main()
{
    printf("Enter expression:\n");
    yyparse();
    return 0;
}