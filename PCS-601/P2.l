%{
#include <stdio.h>

/* Counters */
int lines = 0;
int spaces = 0;
int tabs = 0;
int others = 0;
%}

%%

\n      { lines++; }          /* Count new lines */
" "     { spaces++; }         /* Count spaces */
\t      { tabs++; }           /* Count tab characters */
.       { others++; }         /* Count all other characters */

%%

int main()
{
    printf("Enter text (Press Ctrl+D to stop):\n");
    yylex();

    printf("\nThe number of lines are: %d\n", lines);
    printf("The number of spaces are: %d\n", spaces);
    printf("The number of tab-meta characters are: %d\n", tabs);
    printf("The rest of the characters are: %d\n", others);

    return 0;
}

int yywrap()
{
    return 1;
}