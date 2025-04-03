    //Première section avec les options et les reg exp
%{
#include <stdio.h>
#include <string.h>
#include "parser.h"

%}

    //jsp ce que c'est mais il faut le désactiver
%option noyywrap 



    //les regexp

    //identifier		[a-zA-Z0-9]+


%%
    //Deuxième partie avec les règles

[\n\t\ ]+ ;
let     {return LET;}   
in      {return IN;}
rec     {return REC;}
\;       {return SEMICOLON;}
\|      {return PIPE;}
\-\>      {return ARROW;}
match   {return MATCH;}
with    {return WITH;}
\=       {return EQUAL;}

[0-9]+     { ; }
[a-zA-Z]+  { printf("Mot : %s\n", yytext); }
.          { printf("Caractère inconnu : %s\n", yytext); }



%%
  /*  //Troisième partie avec le code à exécuter

    int main(int, char**) {
  // lex through the input:
  while(yylex());
}*/



