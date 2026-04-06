%{
#include<stdio.h>
%}

%s S1 S2 S3 A B C DEAD

%%

<INITIAL>a      { BEGIN S1; }
<INITIAL>b      { BEGIN DEAD; }

<S1>b           { BEGIN S2; }
<S1>a           { BEGIN DEAD; }

<S2>b           { BEGIN S3; }
<S2>a           { BEGIN DEAD; }

<S3>a           { BEGIN A; }
<S3>b           { BEGIN B; }

<A>a            { BEGIN A; }
<A>b            { BEGIN B; }

<B>a            { BEGIN A; }
<B>b            { BEGIN C; }

<C>a            { BEGIN A; }
<C>b            { BEGIN B; }

<DEAD>a         { BEGIN DEAD; }
<DEAD>b         { BEGIN DEAD; }

.               { printf("Invalid character\n"); BEGIN INITIAL; }

<INITIAL,S1,S2,S3,A,B,C,DEAD>\n {
    if(YYSTATE == C)
        printf("Accepted\n");
    else
        printf("Not Accepted\n");

    BEGIN INITIAL;
}

%%

int main()
{
    printf("Enter string (over {a,b}):\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}