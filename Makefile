# $Id: Makefile,v 1.4 2023/02/11 03:39:46 minmin Exp $

ZU_SRC = zmkdir
ZU_TARGET = zrmdir zmv zcp

TARGET = ${ZU_TARGET} zfs-ro zfs-origin

LN     = ln -f -s
RM     = rm -f

all: ${TARGET}

${ZU_TARGET}:
	${LN} zmkdir $@

zfs-ro zfs-origin:
	${LN} zls $@

clean:
	${RM} ${TARGET}
