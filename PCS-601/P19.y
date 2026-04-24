%{
#include <stdio.h>
#include <stdlib.h>

int yylex();
void yyerror(const char *s);
%}

%union {
    int num;
}

%token <num> NUMBER

/* Operator precedence */
%left '+' '-'
%left '*' '/'

%%

input:
      expr '\n' { printf("\n"); }
    ;

expr:
      expr '+' expr   { printf("+ "); }
    | expr '-' expr   { printf("- "); }
    | expr '*' expr   { printf("* "); }
    | expr '/' expr   { printf("/ "); }
    | '(' expr ')'
    | NUMBER          { printf("%d ", $1); }
    ;

%%

void yyerror(const char *s)
{
    printf("Invalid Expression\n");
}

int main()
{
    printf("Enter Infix Expression:\n");
    yyparse();
    return 0;
}