%{
#include <stdio.h>
int count = 1;
%}

%%

^[-]?[0-9]+\.[0-9]+$ {
    printf("%d) This is a Floating Point Number\n", count++);
}

^[-]?[0-9]+$ {
    printf("%d) This is an Integer Number\n", count++);
}

^.*$ {
    printf("%d) This is not a Valid Number\n", count++);
}

\n   { /* ignore newline */ }

%%

int main()
{
    printf("Enter numbers (Press Ctrl+D to stop):\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}