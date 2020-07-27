CC = gcc
LIB_SRC = ../lib_hello_world/
LIB_IN =-lhello
OBJ_OUT = hello.o
FILE_IN = hello_world.c
FILE_OUT = hello

$(FILE_OUT): $(OBJ_OUT) $(LIB_SRC)
	$(CC) -o $(FILE_OUT) $(OBJ_OUT) -L $(LIB_SRC) $(LIB_IN)

$(OBJ_OUT): $(FILE_IN)
	$(CC) -o $(OBJ_OUT) -c $(FILE_IN)