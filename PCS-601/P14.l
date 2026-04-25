%{
#include <stdio.h>
%}

%s A B C DEAD

%%

<INITIAL>a   { BEGIN A; }
<INITIAL>b   { BEGIN B; }
<INITIAL>\n  { printf("Accepted\n"); }

<A>a   { BEGIN INITIAL; }
<A>b   { BEGIN C; }
<A>\n  { printf("Not Accepted\n"); BEGIN INITIAL; }

<B>a   { BEGIN C; }
<B>b   { BEGIN INITIAL; }
<B>\n  { printf("Not Accepted\n"); BEGIN INITIAL; }

<C>a   { BEGIN B; }
<C>b   { BEGIN A; }
<C>\n  { printf("Not Accepted\n"); BEGIN INITIAL; }

<INITIAL,A,B,C>[^ab\n] { BEGIN DEAD; }

<DEAD>[^\n] { }
<DEAD>\n { printf("Not Accepted\n"); BEGIN INITIAL; }

%%

int main()
{
    printf("Enter strings (Ctrl+D to stop):\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}