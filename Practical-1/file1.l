digit [0-9]+
string [a-zA-Z]+

%%
{digit} { printf("Digit: %s\n", yytext); }
{string} { printf("String: %s\n", yytext); }
. { printf("Invalid: %s\n", yytext); }
%%

int main(){
    yylex();
    return 0; 
}