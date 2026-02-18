%{
#include <stdio.h>
#include <stdlib.h>

FILE *out;
int space_flag = 0;
%}

%%

[ \t\n]+    {
                if (!space_flag)
                {
                    fprintf(out, " ");
                    space_flag = 1;
                }
            }

[^ \t\n]+   {
                fprintf(out, "%s", yytext);
                space_flag = 0;
            }

%%

int main()
{
    yyin = fopen("Input.txt", "r");
    out = fopen("Output.txt", "w");

    if (yyin == NULL || out == NULL)
    {
        printf("Error opening file\n");
        return 1;
    }

    yylex();

    fclose(yyin);
    fclose(out);

    printf("White spaces replaced successfully. Check Output.txt\n");
    return 0;
}

int yywrap()
{
    return 1;
}
