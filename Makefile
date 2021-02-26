# Makefile courtesy of vlad557776, fixes compilation under Clang
# STDDEF patch courtesy of gattilorenz on GitHub
# Original program by Octocontrabass

# you may change this
CC=gcc

# define default target
default: brandy

# define all target
all: clean brandy

# use -f or else rm will error out if no matching file is present
clean:
	rm -f brandy *.o

# apparently compiling using object files fixes clang compile?
brandy:
	${CC} -o brandy.o -c brandy.c
	${CC} -o enigma.o -c enigma.c
	${CC} -o brandy enigma.o brandy.o
