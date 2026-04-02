%{
#include "parser.tab.h"
#include <string.h>
#include <stdlib.h>
%}

%%

"//".* { /* Ignora comentarios de uma linha */ }
[ \t\n]+                { /* Ignora espacos em branco e quebras de linha */ }

"int"                   { return INT; }

[a-zA-Z_][a-zA-Z0-9_]* { yylval.str = strdup(yytext); return ID; }
[0-9]+                  { yylval.num = atoi(yytext); return NUM; }

"+"                     { return '+'; }
"-"                     { return '-'; }
"*"                     { return '*'; }
"/"                     { return '/'; }
"="                     { return '='; }

"("                     { return '('; }
")"                     { return ')'; }
"{"                     { return '{'; }
"}"                     { return '}'; }
";"                     { return ';'; }

.                       { printf("Erro lexico: %s\n", yytext); }

%%

int yywrap(void) {
    return 1;
}