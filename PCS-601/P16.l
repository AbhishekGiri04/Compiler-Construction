%{
#include <stdio.h>
%}

%s A AB DEAD

%%

/* Start state */
<INITIAL>a      { BEGIN A; }
<INITIAL>b      { BEGIN DEAD; }

/* State A (last = a) */
<A>a            { BEGIN A; }
<A>b            { BEGIN AB; }

/* State AB (last = b) */
<AB>a           { BEGIN A; }
<AB>b           { BEGIN AB; }

/* Dead state */
<DEAD>[ab]      { BEGIN DEAD; }

/* Invalid character */
.               { printf("Invalid character\n"); BEGIN INITIAL; }

/* End of string */
<INITIAL,A,AB,DEAD>\n
{
    if(YYSTATE == AB)
        printf("Accepted\n");
    else
        printf("Not Accepted\n");

    BEGIN INITIAL;
}

%%

int main()
{
    printf("Enter strings (over {a,b}):\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}