%{
#include <stdio.h>
int valid1 = 0, valid2 = 0;
%}

%%
0*1*       { valid1 = 1; }
(0|1)*1    { valid2 = 1; }
.|\n       { /* Ignore any other character */ }
%%

int main() {
    yylex();
    printf("Valid as per 1st RE: %s\n", valid1 ? "Yes" : "No");
    printf("Valid as per 2nd RE: %s\n", valid2 ? "Yes" : "No");
    return 0;
}