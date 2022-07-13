CC=arm-none-eabi-
CFLAGS= -mcpu=cortex-m4 -mthumb -gdwarf-2 -g
INCS=-I .
LIBS=
SRC=$(wildcard *.c) #all c files 
OBJ=$(SRC:.c=.o) #each c file to obj file
AS=$(wildcard *.s) #all s files 
ASOBJ=$(AS:.s=.o) #each s file to obj file
Project_name=lab3

all: $(Project_name).bin
	@echo "========Build is Done========"

%.o: %.c
	$(CC)gcc.exe -c $(INCS) $(CFLAGS) $< -o $@

$(Project_name).elf: $(OBJ) $(ASOBJ)
	$(CC)ld.exe -T linker_script.ld $(LIBS) $(OBJ) $(ASOBJ) -o $@ -Map=Mapfile.map
	cp $(Project_name).elf $(Project_name).axf

$(Project_name).bin: $(Project_name).elf
	$(CC)objcopy.exe -O binary $< $@
	
clean_all:
	rm *.o *.elf *.bin
	
clean:
	*.elf *.bin