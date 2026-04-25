%{
#include <stdio.h>
int state = 0;  // 0 = S0, 1 = S1
%}

%s S0 S1 DEAD

%%

<INITIAL>a        { BEGIN S1; state = 1; }
<INITIAL>b        { BEGIN DEAD; state = -1; }

<S1>a             { BEGIN S1; state = 1; }
<S1>b             { BEGIN S0; state = 0; }

<S0>a             { BEGIN S1; state = 1; }
<S0>b             { BEGIN S0; state = 0; }

<INITIAL,S0,S1>[^ab\n] { BEGIN DEAD; state = -1; }

<INITIAL,S0,S1,DEAD>\n   {
    if(state == 0)
        printf("Accepted\n");
    else
        printf("Not Accepted\n");

    BEGIN INITIAL;
    state = 0;
}

%%

int main()
{
    printf("Enter string:\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}