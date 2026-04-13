%{
#include "P18.tab.h"
%}

%%

[0-9]+      { return NUMBER; }
"+"         { return PLUS; }
"-"         { return MINUS; }
"*"         { return MUL; }
"/"         { return DIV; }
"("         { return LP; }
")"         { return RP; }
[ \t\n]     ;
.           { return yytext[0]; }

%%

int yywrap() {
    return 1;
}