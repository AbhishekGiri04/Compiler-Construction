%{
#include <stdio.h>
FILE *out;
%}

%%

\<[^>]+\>   {
                fprintf(out, "%s\n", yytext);
            }

.|\n        ;   /* Ignore other characters */

%%

int main(int argc, char *argv[])
{
    if (argc != 3)
    {
        printf("Usage: %s <input_html_file> <output_text_file>\n", argv[0]);
        return 1;
    }

    yyin = fopen(argv[1], "r");
    if (yyin == NULL)
    {
        printf("Cannot open input file\n");
        return 1;
    }

    out = fopen(argv[2], "w");
    if (out == NULL)
    {
        printf("Cannot open output file\n");
        return 1;
    }

    yylex();

    fclose(yyin);
    fclose(out);

    return 0;
}

int yywrap()
{
    return 1;
}
