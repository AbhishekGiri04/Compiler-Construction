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
      /* empty */
    | input line
    ;

line:
      expr '\n'   { printf("Result = %d\n", $1); }
    ;

expr:
      expr '+' expr   { $$ = $1 + $3; }
    | expr '-' expr   { $$ = $1 - $3; }
    | expr '*' expr   { $$ = $1 * $3; }
    | expr '/' expr
        {
            if ($3 == 0)
            {
                printf("Error: Division by zero\n");
                $$ = 0;
            }
            else
                $$ = $1 / $3;
        }
    | '(' expr ')'    { $$ = $2; }
    | NUMBER          { $$ = $1; }
    ;

%%

void yyerror(const char *s)
{
    printf("Invalid Expression\n");
}

int main()
{
    printf("Enter expressions (Ctrl+D to stop):\n");
    yyparse();
    return 0;
}