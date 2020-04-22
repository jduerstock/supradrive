
20-1.bin: 20-1.asm
	ca65 -o 20-1.o 20-1.asm
	ld65 -o 20-1.bin -C 20-1.cfg 20-1.o
	sha1sum -c 20-1.sha1
