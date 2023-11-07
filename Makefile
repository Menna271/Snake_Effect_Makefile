# Header Files Inclusion
INCLUDES = -Ilib/ -Iinc/  

# Variables Declaration
CC = avr-gcc 
CFLAGS = -Wall -mmcu=atmega32 -Os -DF_CPU=1000000UL
OBJCOPY = avr-objcopy -O ihex
LIB = ./lib/*.a
SRC = ./src/main.c 
TXT = binaryReport.txt
HEX = snake_effect.hex
ELF = $(HEX:.hex=.elf)
OBJ = $(HEX) $(ELF) $(TXT)
BPATH = ./build
SIZE = avr-size

all: $(OBJ)
	@mv $(TXT) $(HEX) $(ELF) $(BPATH)

$(HEX): $(ELF)
	$(OBJCOPY) $< $@
	$(SIZE) $@ > $(TXT)
	

$(LIB):
	(cd lib; make all)

$(ELF): $(SRC) $(LIB)
	$(CC) $(CFLAGS) $(INCLUDES) -o $@ $^

clean:
	(cd build; rm $(ELF) $(HEX) $(TXT))
	(cd lib; make clean)
