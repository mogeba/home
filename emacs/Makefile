include ../Makefile.inc

installs = $(HOME)/.emacs.d/init.el

.PHONY: all install clean reset
all: $(installs)

install: all

clean:

reset: clean
	-$(RM) -f $(installs)

$(installs) : $(HOME)/.emacs.d/% : %
	$(CP) -n $< $@
