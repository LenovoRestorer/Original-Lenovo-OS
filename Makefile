CC = x86_64-elf-gcc
LD = x86_64-elf-ld

CFLAGS = -ffreestanding -O2 -Wall -Wextra
LDFLAGS = -T kernel/linker.ld

all: kernel.bin

kernel.bin: kernel/kernel.c
	$(CC) $(CFLAGS) -c kernel/kernel.c -o kernel.o
	$(LD) $(LDFLAGS) kernel.o -o kernel.bin

clean:
	rm -f *.o kernel.bin
