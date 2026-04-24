%{
#include <stdio.h>
%}

%s INT FLOAT ID DEAD

%%

/* START STATE */
<INITIAL>[0-9]          { BEGIN INT; yymore(); }
<INITIAL>[a-zA-Z_]      { BEGIN ID; yymore(); }
<INITIAL>[ \t\n]+       ;   /* ignore whitespace */
<INITIAL>.              { BEGIN DEAD; }

/* INTEGER STATE */
<INT>[0-9]              { yymore(); }
<INT>"."                { yymore(); BEGIN FLOAT; }
<INT>[^0-9.\n]          {
                          printf("Integer Constant: %s\n", yytext);
                          BEGIN INITIAL;
                          unput(yytext[yyleng-1]);
                        }
<INT>\n                 {
                          printf("Integer Constant: %s\n", yytext);
                          BEGIN INITIAL;
                        }

/* FLOAT STATE */
<FLOAT>[0-9]            { yymore(); }
<FLOAT>[^0-9\n]         {
                          printf("Float Constant: %s\n", yytext);
                          BEGIN INITIAL;
                          unput(yytext[yyleng-1]);
                        }
<FLOAT>\n               {
                          printf("Float Constant: %s\n", yytext);
                          BEGIN INITIAL;
                        }

/* IDENTIFIER STATE */
<ID>[a-zA-Z0-9_]        { yymore(); }
<ID>[^a-zA-Z0-9_\n]     {
                          printf("Identifier: %s\n", yytext);
                          BEGIN INITIAL;
                          unput(yytext[yyleng-1]);
                        }
<ID>\n                  {
                          printf("Identifier: %s\n", yytext);
                          BEGIN INITIAL;
                        }

/* DEAD STATE */
<DEAD>[^\n]             { BEGIN DEAD; }
<DEAD>\n                {
                          printf("Invalid Token\n");
                          BEGIN INITIAL;
                        }

%%

int main()
{
    printf("Enter input:\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}