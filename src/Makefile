CC=clang
CFLAGS=-Iinclude -oarm9dec
CFILES=*.c
OUT=arm9dec
MAN=arm9dec.1.gz

all: arm9dec man

arm9dec:
	$(CC) $(CFLAGS) $(CFILES)

man:
	gzip -k arm9dec.1

clean:
	rm $(OUT) $(MAN)

install:
	cp $(OUT) /usr/local/bin
	cp $(MAN) /usr/local/share/man/man1

uninstall:
	rm /usr/local/bin/arm9dec
