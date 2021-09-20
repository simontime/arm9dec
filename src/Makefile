NAME=arm9dec
CC=clang
CFILES=*.c
CFLAGS=-Iinclude
MAN=${NAME}.1.gz

all: ${NAME} man

${NAME}:
	$(CC) $(CFLAGS) $(CFILES) -o ${NAME}

man:
	gzip -k ${NAME}.1

clean:
	rm $(NAME) $(MAN)

install:
	cp $(NAME) /usr/local/bin
	cp $(MAN) /usr/local/share/man/man1

uninstall:
	rm /usr/local/bin/${NAME}
