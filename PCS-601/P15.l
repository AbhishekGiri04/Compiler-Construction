%{
#include <stdio.h>
%}

%s INT FLOAT ID DEAD

%%

<INITIAL>[0-9]        { BEGIN INT; yymore(); }
<INITIAL>[a-zA-Z]     { BEGIN ID; yymore(); }
<INITIAL>[ \t]        ;   /* ignore spaces */
<INITIAL>\n           ;
<INITIAL>.            { BEGIN DEAD; }


<INT>[0-9]            { yymore(); }
<INT>"."              { yymore(); BEGIN FLOAT; }
<INT>[^0-9.\n]        { 
                        printf("Integer Constant: %s\n", yytext); 
                        BEGIN INITIAL; 
                        unput(yytext[yyleng-1]); 
                      }
<INT>\n               { 
                        printf("Integer Constant: %s\n", yytext); 
                        BEGIN INITIAL; 
                      }


<FLOAT>[0-9]          { yymore(); }
<FLOAT>[^0-9\n]       { 
                        printf("Float Constant: %s\n", yytext); 
                        BEGIN INITIAL; 
                        unput(yytext[yyleng-1]); 
                      }
<FLOAT>\n             { 
                        printf("Float Constant: %s\n", yytext); 
                        BEGIN INITIAL; 
                      }


<ID>[a-zA-Z0-9]       { yymore(); }
<ID>[^a-zA-Z0-9\n]    { 
                        printf("Identifier: %s\n", yytext); 
                        BEGIN INITIAL; 
                        unput(yytext[yyleng-1]); 
                      }
<ID>\n                { 
                        printf("Identifier: %s\n", yytext); 
                        BEGIN INITIAL; 
                      }


<DEAD>[^\n]           { BEGIN DEAD; }
<DEAD>\n              { 
                        printf("Invalid Token\n"); 
                        BEGIN INITIAL; 
                      }

%%

int main() {
    printf("Enter input:\n");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}