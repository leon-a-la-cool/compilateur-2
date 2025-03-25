#include <stdio.h>
#include <stdlib.h> 
#include <string.h>




int main(int argc, char *argv[]) {  //argcest le nombre d'argument (le premier est le nom du programme), argv la liste d'arguments
    int parse_only;
    char* outputname;
    char* file;

    printf("affichange des arguments \n \n");
    for (int i = 1; i < argc; i++) {
        printf(argv[i]);
        printf("\n");
    }

    printf("\n\n");

    for (int i = 1; i < argc; i++) {
        if (argv[i][0]!= '-'){
            file = argv[i];
            }
        if (strcmp(argv[i], "--parse_only") == 0) {
            parse_only = 1;
            }
        if (strcmp(argv[i], "-o") == 0){
            if (i+1<argc){
                if (argv[i+1][0]!= '-'){
                outputname = argv[i+1];
                i++;
                    }
                else {outputname = "";
                }
                }
            }
        }
    
    if (parse_only==1) {
        printf("on fait semblant de compiler en parse only\n"); //pour l'instant parse et pas parse font la meme chose
        char *command = malloc((strlen(file)+strlen(outputname)+10)*sizeof(char));
        printf("ici\n");   
        sprintf(command,"ocamlc -o %s %s", outputname, file);
        system(command);
        }
    else {char* command;
        sprintf(command,"ocamlc -o %s %s", outputname, file);
        system(command);
            }    
    }