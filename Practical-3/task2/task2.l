%{
#include <stdio.h>
%}

%%
[0-9]+  { printf("%s\n", yytext); }
.       { /* Ignore any other character */ }
%%

int main() {
    yylex();
    return 0;
}