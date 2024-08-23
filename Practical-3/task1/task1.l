%{
#include <stdio.h>
%}

%%
[0-9]   { printf("%c\n", yytext[0]); }
.       { /* Ignore any other character */ }
%%

int main() {
    yylex();
    return 0;
}