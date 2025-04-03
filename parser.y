%{
#include <stdio.h>
%}

//si on fait pas ça toutes les données portées par les tokens auront le meme type, on ne veut pas ça. 
%union {
    int num;
    char* str;
}


%token LET
%token REC
%token IN 
%token SEMICOLON
%token PIPE
%token ARROW
%token MATCH
%token WITH
%token EQUAL

%token PLUS
%token MINUS
%token LESS


%%

program:
    statements
;

statements:
    statement
  | statements statement
;

statement:
    LET { printf("LET\n"); }
  | REC  { printf("REC\n"); }
  | IN  { printf("IN\n"); }
  | SEMICOLON { printf("SEMICOLON\n"); }
  | PIPE { printf("PIPE\n"); }
  | ARROW { printf("ARROW\n"); }
  | MATCH { printf("MATCH\n"); }
  | WITH { printf("WITH\n"); }
  | EQUAL { printf("EQUAL\n"); }
  | PLUS { printf("PLUS\n"); }
  | MINUS { printf("MINUS\n"); }
  | LESS { printf("LESS\n"); }
;


%%
int yyerror(char *s) {
    printf("yyerror : %s\n",s);
    return 0;
}

int main(void) {
    yyparse();
    return 0;
}
