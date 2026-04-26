%{
#include "P18.tab.h"
%}

%%

[0-9]+      { return NUMBER; }
[ \t]       ;
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