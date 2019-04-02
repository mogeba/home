MAKE   = make
CP     = cp
RM     = rm
GIT    = git

CC     = gcc
CFLAGS =
LFLAGS =

exes     = argv
objs     = argv.o
srcs     = argv.c
headers  =

installs = $(HOME)/bin/argv \
           $(HOME)/bin/merge-fortunes $(HOME)/bin/select-fortune \
           $(HOME)/bin/jee

.PHONY: all install uninstall clean reset

all: $(exes)

install: all $(installs)

uninstall:
	-$(RM) -f $(installs)

clean:
	-$(RM) -f $(exes) *.o

reset: clean uninstall

kotodama:
	./merge-fortunes ../fortunes-jp/kotodama.fortune > ../fortunes-jp/tmp.fortune
	cp ../fortunes-jp/tmp.fortune ../fortunes-jp/kotodama.fortune
	rm ../fortunes-jp/tmp.fortune

$(objs): %.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

$(installs): $(HOME)/bin/% : %
	$(CP) $< $@
