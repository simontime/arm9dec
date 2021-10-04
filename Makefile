.POSIX:
	ifndef PREFIX
		PREFIX = /usr/local
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

uninstall:
	${RM} ${DESTDIR}${PREFIX}/bin/${NAME}
