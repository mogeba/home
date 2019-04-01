CC     = gcc
CFLAGS =
LFLAGS =

exes    = argv
objs    = argv.o
srcs    = argv.c
headers =

.PHONY: all install clean reset

all: $(exes)

install: all
	cp argv           $(HOME)/bin
	cp merge-fortunes $(HOME)/bin
	cp select-fortune $(HOME)/bin
	cp jee            $(HOME)/bin

clean:
	-rm -f $(exes) *.o

reset: clean

kotodama:
	./merge-fortunes ../fortunes-jp/kotodama.fortune > ../fortunes-jp/tmp.fortune
	cp ../fortunes-jp/tmp.fortune ../fortunes-jp/kotodama.fortune
	rm ../fortunes-jp/tmp.fortune

$(objs): %.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<
