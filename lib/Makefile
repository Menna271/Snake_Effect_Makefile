# Header Files Inclusion
INCLUDES = -I. -I../inc/  

# Variables Declaration
CC = avr-gcc
CFLAGS = -Wall
LIB = libMDIO.a
SRC = MDIO_Program.c 
OBJ = $(SRC:.c=.o)

all: $(LIB)

$(LIB): $(OBJ)
	ar r $@ $<

$(OBJ): $(SRC)
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	rm $(LIB) $(OBJ)

