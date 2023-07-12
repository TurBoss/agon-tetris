SRC=src/main.c

CC=zcc

CFLAGS=+agon -pragma-define:CRT_ENABLE_COMMANDLINE=1 -pragma-define:CLIB_DEFAULT_SCREEN_MODE=1 -DAMALLOC -lm -O2 -lndos


all: a.bin

a.bin: $(SRC)
	$(CC) $(CFLAGS) src/main.c -o tetris.bin

clean:
	rm tetris.bin
