%{
#include <stdio.h>
%}

DIGIT   [0-9]
LETTER  [a-zA-Z]
ID      {LETTER}({LETTER}|{DIGIT})*
NUMBER  {DIGIT}+
STRING  \"[^\"]*\"
CHARLIT \'[^\']\'

%%
int|float|double|char|if|else|for|while|return|void {
    printf("KEYWORD : %s\n", yytext);
}

{STRING} {
    printf("STRING : %s\n", yytext);
}

{CHARLIT} {
    printf("LITERAL : %s\n", yytext);
}

{NUMBER} {
    printf("CONSTANT : %s\n", yytext);
}

{ID} {
    printf("IDENTIFIER : %s\n", yytext);
}

[ \t\n]+ ;

. {
    printf("UNKNOWN : %s\n", yytext);
}
%%
int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}
