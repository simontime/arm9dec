.POSIX:
	ifndef PREFIX
		PREFIX = /usr/local
	endif

NAME=arm9dec
CC=clang
CFILES=src/*.c
CFLAGS=-Wall -Wextra -Ofast

all: ${NAME} man

${NAME}:
	${CC} ${CFLAGS} ${CFILES} -o ${NAME}

man:
	cp ${NAME}.1 ${DESTDIR}${PREFIX}/share/man/man1

clean:
	${RM} ${NAME}

install:
	cp ${NAME} ${DESTDIR}${PREFIX}/bin

uninstall:
	${RM} ${DESTDIR}${PREFIX}/bin/${NAME}
