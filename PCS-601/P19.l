%{
#include "P19.tab.h"
#include <stdlib.h>
%}

%%

[0-9]+      { yylval.num = atoi(yytext); return NUMBER; }

"+"         { return '+'; }
"-"         { return '-'; }
"*"         { return '*'; }
"/"         { return '/'; }

"("         { return '('; }
")"         { return ')'; }

[ \t\n]     ;   // ignore whitespace

.           { return yytext[0]; }

%%

int yywrap()
{
    return 1;
}