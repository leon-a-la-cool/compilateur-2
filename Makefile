
.PHONY: compile

compile : compile.c
	gcc -o compile ./compile.c

clean :
	rm -f ./tests/*.cmo ./tests/*.cmi ./tests/*.cmx ./tests/*.o ./tests/*.cmt
	rm -f *.o 