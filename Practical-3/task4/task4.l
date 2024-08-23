%{
#include <stdio.h>
int count = 0;
%}

%%
[Mm]ohit  { count++; }
.|\n      { /* Ignore any other character */ }
%%

int main() {
    yylex();
    printf("%d\n", count);
    return 0;
}