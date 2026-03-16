%{
#include <stdio.h>
#include <stdlib.h>

FILE *out;
%}

%%

"//".* { /* Ignore single line comments */ }

"/*"([^*]|\*+[^*/])*\*+"/" { /* Ignore multi-line comments */ }

.|\n { fprintf(out,"%s",yytext); }

%%

int main(int argc,char *argv[])
{
    if(argc!=2)
    {
        printf("Usage: ./P8 input.c\n");
        return 1;
    }

    yyin=fopen(argv[1],"r");
    out=fopen("out.c","w");

    if(yyin==NULL || out==NULL)
    {
        printf("File Error\n");
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