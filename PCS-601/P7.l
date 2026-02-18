%{
#include <stdio.h>
#include <stdlib.h>

FILE *out;
%}

%%

"//".*                    { /* remove single-line comment */ }

"/*"([^*]|\*+[^*/])*\*+"/" { /* remove multi-line comment */ }

.|\n                      { fprintf(out, "%s", yytext); }

%%

int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        printf("Usage: ./P7 inputfile.c\n");
        return 1;
    }

    yyin = fopen(argv[1], "r");
    out = fopen("out.c", "w");

    if (yyin == NULL || out == NULL)
    {
        printf("Error opening file\n");
        return 1;
    }

    yylex();

    fclose(yyin);
    fclose(out);

    printf("Comments removed successfully. Check out.c\n");
    return 0;
}

int yywrap()
{
    return 1;
}
