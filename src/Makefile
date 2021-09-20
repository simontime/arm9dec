CC=clang
CFLAGS=-Iinclude -o${NAME}
CFILES=*.c
NAME=arm9dec
MAN=${NAME}.1.gz

all: ${NAME} man

${NAME}:
	$(CC) $(CFLAGS) $(CFILES)

man:
	gzip -k ${NAME}.1

clean:
	rm $(NAME) $(MAN)

install:
	cp $(NAME) /usr/local/bin
	cp $(MAN) /usr/local/share/man/man1

uninstall:
	rm /usr/local/bin/${NAME}
