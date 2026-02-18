%{
#include <stdio.h>
#include <stdlib.h>

FILE *out;
%}

%%

\<[^>]+\>    {
                fprintf(out, "%s\n", yytext);
            }

.|\n         { }

%%

int main()
{
    yyin = fopen("input.html", "r");
    out = fopen("output.txt", "w");

    if (yyin == NULL || out == NULL)
    {
        printf("File error\n");
        return 1;
    }

    yylex();

    fclose(yyin);
    fclose(out);

    printf("HTML tags extracted successfully. Check output.txt\n");
    return 0;
}

int yywrap()
{
    return 1;
}
