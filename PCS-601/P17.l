%{
#include "P17.tab.h"
%}

%%

[0-9]+      { return NUMBER; }

[ \t]       ;   // ignore spaces

\n          { return '\n'; }

"+"         { return '+'; }
"-"         { return '-'; }
"*"         { return '*'; }
"/"         { return '/'; }

"("         { return '('; }
")"         { return ')'; }

.           { return yytext[0]; }

%%

int yywrap()
{
    return 1;
}