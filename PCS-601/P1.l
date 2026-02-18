%{
#include <stdio.h>

/* Counters */
int lines = 0;
int spaces = 0;
int tabs = 0;
int others = 0;
%}

%%

\n      { lines++; }
" "     { spaces++; }
\t      { tabs++; }
.       { others++; }

%%

int main(void)
{
    yylex();

    printf("\nNumber of lines = %d\n", lines);
    printf("Number of spaces = %d\n", spaces);
    printf("Number of tabs = %d\n", tabs);
    printf("Number of other characters = %d\n", others);

    return 0;
}

int yywrap(void)
{
    return 1;
}
