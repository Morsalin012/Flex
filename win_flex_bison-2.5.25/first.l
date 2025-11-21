%{
#include <stdio.h>
%}

%%
[0-9]+      { printf("Number: %s\n", yytext); }
quit        { printf("Exiting.\n"); exit(0); }
[a-zA-Z]+   { printf("Word: %s\n", yytext); }
.           { printf("Others: %s\n", yytext); }
%%
int yywrap(){}
int main() {
    yylex();
    return 0;
}
