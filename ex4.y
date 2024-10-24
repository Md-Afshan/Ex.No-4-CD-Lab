%{
#include <stdio.h>
/* This YACC program is for recognizing the Expression */
%}

%token ID INT FLOAT DOUBLE
%% D: T L;
L: L ',' ID   | ID;

T: INT | FLOAT | DOUBLE;

%%
extern FILE *yyin; int main() {
do {
yyparse();
} while (!feof(yyin)); return 0;
}

void yyerror(char *s) { 
}
