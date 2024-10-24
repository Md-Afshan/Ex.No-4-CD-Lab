%{
#include "y.tab.h"
%}

%%

"int" { return INT; } 
"float" { return FLOAT; }
"double" { return DOUBLE; }

[a-zA-Z][a-zA-Z0-9]* {
printf("\nIdentifier is %s", yytext); return ID;
}

. { return yytext[0]; }

\n { return 0; }

%%

int yywrap() 
{ 
return 1;
}
