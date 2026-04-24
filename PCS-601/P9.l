%{
#include <stdio.h>
#include <stdlib.h>

FILE *yyin, *out;
%}

%%

/* Match HTML tags */
<[^>]+> 
{
    fprintf(out, "%s\n", yytext);
}

/* Ignore everything else */
.|\n   { }

%%

int main()
{
    char infile[50], outfile[50];

    printf("Enter HTML input file name: ");
    scanf("%s", infile);

    printf("Enter output text file name: ");
    scanf("%s", outfile);

    yyin = fopen(infile, "r");
    out = fopen(outfile, "w");

    if(yyin == NULL || out == NULL)
    {
        printf("Error opening file\n");
        return 1;
    }

    yylex();

    fclose(yyin);
    fclose(out);

    printf("HTML tags extracted successfully.\n");
    return 0;
}

int yywrap()
{
    return 1;
}