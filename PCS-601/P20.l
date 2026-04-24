%{
#include "y.tab.h"
%}

%%

[0-9]+      { yylval = atoi(yytext); return NUMBER; }

"+"         { return '+'; }
"-"         { return '-'; }
"*"         { return '*'; }
"/"         { return '/'; }

"("         { return '('; }
")"         { return ')'; }

\n          { return '\n'; }

[ \t]       ;   /* ignore spaces */

.           { return yytext[0]; }

%%

int yywrap()
{
    return 1;
}