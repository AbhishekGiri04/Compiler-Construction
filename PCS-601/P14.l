%{
#include <stdio.h>
%}

%s A B C DEAD

%%

/* Start state (even a, even b) */
<INITIAL>a { BEGIN A; }
<INITIAL>b { BEGIN B; }
<INITIAL>\n { printf("Accepted\n"); }

/* State A (odd a, even b) */
<A>a { BEGIN INITIAL; }
<A>b { BEGIN C; }
<A>\n { printf("Not Accepted\n"); BEGIN INITIAL; }

/* State B (even a, odd b) */
<B>a { BEGIN C; }
<B>b { BEGIN INITIAL; }
<B>\n { printf("Not Accepted\n"); BEGIN INITIAL; }

/* State C (odd a, odd b) */
<C>a { BEGIN B; }
<C>b { BEGIN A; }
<C>\n { printf("Not Accepted\n"); BEGIN INITIAL; }

/* Invalid characters */
<INITIAL,A,B,C>[^ab\n] { BEGIN DEAD; }

/* Dead state */
<DEAD>[^\n] { }
<DEAD>\n { printf("Not Accepted\n"); BEGIN INITIAL; }

%%

int main()
{
    printf("Enter strings (Press Ctrl+D to stop):\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}