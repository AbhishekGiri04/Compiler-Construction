%{
#include <stdio.h>
%}

%%
"//".*                         ;   /* remove single-line comments */
"/*"([^*]|\*+[^*/])*\*+"/"     ;   /* remove multi-line comments */
.|\n                           { printf("%s", yytext); }
%%

int yywrap() { return 1; }

int main()
{
    yylex();
    return 0;
}
