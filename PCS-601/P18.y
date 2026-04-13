%{
#include <stdio.h>
#include <stdlib.h>

int yylex();
void yyerror(const char *s);
%}

%token NUMBER PLUS MINUS MUL DIV LP RP

%%

expr:
      expr PLUS expr
    | expr MINUS expr
    | expr MUL expr
    | expr DIV expr
    | LP expr RP
    | NUMBER
    ;

%%

void yyerror(const char *s) {
    printf("Invalid Expression\n");
}

int main() {
    printf("Enter expression:\n");
    if (yyparse() == 0)
        printf("Valid Expression\n");
    return 0;
}