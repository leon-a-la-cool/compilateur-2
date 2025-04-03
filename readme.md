
# Compilateur Ocaml 

## LE PLAN

Utiliser flex pour l'analyse lexical et bison pour syntaxique.

## Tests

On peut écrire des tests, pour l'instant on a un script qui lance le compilateur choisit sur tout les fichiers, mais c'est facile à améliorer. On a aussi un fichier c qui pour l'instant lance ocamlc mais après on remplacera par notre lexer puis par notre compilateur.


Utilisation:

`./test compilateur`

`./test compilateur --parse_only`

## Parser

Un début de parser, pour le compiler:

`./parse.sh`

Et l'utiliser :

`./parser` puis écrire le programme dans la sortie standard et appuyer sur entrée

