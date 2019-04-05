include ../Makefile.inc

CFLAGS =
LFLAGS =

exes     = argv   is-cwd-in-env
objs     = argv.o is-cwd-in-env.o
srcs     = argv.c is-cwd-in-env.c
headers  =

installs = $(HOME)/bin/argv $(HOME)/bin/is-cwd-in-env \
           $(HOME)/bin/merge-fortunes $(HOME)/bin/select-fortune $(HOME)/bin/select-archive \
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
	$(CP) ../fortunes-jp/tmp.fortune ../fortunes-jp/kotodama.fortune
	$(RM) ../fortunes-jp/tmp.fortune

$(objs): %.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

$(installs): $(HOME)/bin/% : %
	$(CP) $< $@
