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

    printf("The number of lines are: %d\n", lines);
    printf("The number of spaces are: %d\n", spaces);
    printf("The number of tab-meta characters are: %d\n", tabs);
    printf("The rest of the characters are: %d\n", others);

    return 0;
}

int yywrap(void)
{
    return 1;
}
