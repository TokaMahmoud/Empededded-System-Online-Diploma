CC=arm-none-eabi-
CFLAGS=-mcpu=arm926ej-s -g
INCS=-I .
LIBS=
SRC=$(wildcard *.c) #all c files 
OBJ=$(SRC:.c=.o) #each c file to obj file
AS=$(wildcard *.s) #all s files 
ASOBJ=$(AS:.s=.o) #each s file to obj file
Project_name=lab1

all: $(Project_name).bin
	@echo "========Build is Done========"
	
startup.o: startup.s
	$(CC)as.exe $(CFLAGS) $< -o $@

%.o: %.c
	$(CC)gcc.exe -c $(INCS) $(CFLAGS) $< -o $@

$(Project_name).elf: $(OBJ) $(ASOBJ)
	$(CC)ld.exe -T linker.ld $(LIBS) $(OBJ) $(ASOBJ) -o $@ -Map=Mapfile.map

$(Project_name).bin: $(Project_name).elf
	$(CC)objcopy.exe -O binary $< $@
	
clean_all:
	rm *.o *.elf *.bin
	
clean:
	*.elf *.bin