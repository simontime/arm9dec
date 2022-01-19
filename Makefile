.POSIX:
	ifndef PREFIX
		PREFIX = /usr/local
		mkdir -p /usr/local/man/man1
	endif

NAME		:=	${shell basename ${CURDIR}}
CC		:=	clang
CFILES		:=	*.c
CFLAGS		:=	-Wall -Wextra -Ofast

all: ${NAME}

${NAME}:
	${CC} ${CFLAGS} ${CFILES} -o ${NAME}

clean:
	${RM} ${NAME}

install:
	cp ${NAME} ${DESTDIR}${PREFIX}/bin
	if [ ${PREFIX} = "/" ]; then
		cp ${NAME}.1 /usr/man/man1
	else
		cp ${NAME}.1 ${DESTDIR}${PREFIX}/man/man1
	fi

uninstall:
	${RM} ${DESTDIR}${PREFIX}/bin/${NAME}
