CC      = gcc
CFLAGS  = -Wall -Wextra -std=c99 -pedantic \
-march=native -Os -pipe -s
#-O1 -pg -g -rdynamic
LDFLAGS =

HDR = pseudo.h gifsave89.h
SRC = recterm.c
DST = recterm

all:  $(DST)

idump: idump.c $(HDR)
	$(CC) $(CFLAGS) $(LDFLAGS) $(SRC) $< -o $@

clean:
	rm -f $(DST) *.o
