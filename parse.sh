bison parser.y --defines=parser.h -o parser.c
gcc -c parser.c
flex -o lexer.c lexer.l
gcc -c lexer.c
gcc  parser.o lexer.o -o parser