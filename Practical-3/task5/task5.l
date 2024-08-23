%{
#include <stdio.h>
int valid = 0;
%}

%%
a*b(a|b)*b { valid = 1; }
.|\n       { valid = 0; }
%%

int main() {
    yylex();
    printf("%s\n", valid ? "accepted" : "rejected");
    return 0;
}