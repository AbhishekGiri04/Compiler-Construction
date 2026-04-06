%{
#include<stdio.h>
%}

%s SA SB SAB SBA

%%

<INITIAL>a          { BEGIN SA; }
<INITIAL>b          { BEGIN SB; }

<SA>a               { BEGIN SA; }
<SA>b               { BEGIN SAB; }

<SB>b               { BEGIN SB; }
<SB>a               { BEGIN SBA; }

<SAB>a              { BEGIN SA; }
<SAB>b              { BEGIN SAB; }

<SBA>b              { BEGIN SB; }
<SBA>a              { BEGIN SBA; }

.                   { printf("Invalid character\n"); BEGIN INITIAL; }

<INITIAL,SA,SB,SAB,SBA>\n {
    if(YYSTATE == SA || YYSTATE == SB)
        printf("Accepted\n");
    else if(YYSTATE == INITIAL)
        printf("Empty string - Not Accepted\n");
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