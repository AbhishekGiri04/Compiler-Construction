%{
#include <stdio.h>

int vowels = 0;
int consonants = 0;
%}

%%

/* Count vowels */
[aeiouAEIOU]+      
{ 
    vowels += yyleng; 
}

/* Count consonants */
[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]+  
{ 
    consonants += yyleng; 
}

/* Ignore everything else (spaces, digits, symbols, newline) */
.|\n   { }

%%

int main()
{
    printf("Enter a string:\n");
    yylex();

    printf("\nTotal number of Vowels are: %d\n", vowels);
    printf("Total number of Consonants are: %d\n", consonants);

    return 0;
}

int yywrap()
{
    return 1;
}