# $Id: Makefile,v 1.5 2023/02/11 06:41:15 minmin Exp $

ZU_SRC = zmkdir
ZU_TARGET = zrmdir zmv zcp

TARGET = ${ZU_TARGET} zfs-readonly zfs-origin

LN     = ln -f -s
RM     = rm -f

all: ${TARGET}

${ZU_TARGET}:
	${LN} zmkdir $@

zfs-readonly zfs-origin:
	${LN} zls $@

clean:
	${RM} ${TARGET}
