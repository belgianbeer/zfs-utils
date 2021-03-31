# $Id: Makefile,v 1.3 2021/03/22 22:48:02 minmin Exp $

ZU_SRC = zmkdir
ZU_TARGET = zrmdir zmv zcp

TARGET = ${ZU_TARGET} zfs-ro

LN     = ln -f -s
RM     = rm -f

all: ${TARGET}

${ZU_TARGET}:
	${LN} zmkdir $@

zfs-ro:
	${LN} zls $@

clean:
	${RM} ${TARGET}
