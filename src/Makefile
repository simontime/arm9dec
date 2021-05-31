CC=clang
CFLAGS=-Iinclude -oarm9dec
CFILES=*.c
OUT=arm9dec

arm9dec:
	$(CC) $(CFLAGS) $(CFILES)

clean:
	rm $(OUT)

install:
	cp arm9dec /usr/local/bin

uninstall:
	rm /usr/local/bin/arm9dec
