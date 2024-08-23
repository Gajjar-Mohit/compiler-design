%{
#include <stdio.h>
%}

%%
USA     { printf("India"); }
.|\n    { printf("%s", yytext); }
%%

int main() {
    yylex();
    return 0;
}