dir   = $(HOME)/.emacs.d
files = $(dir)/init.el

.PHONY: all install clean reset
all: $(files)

install: all

clean:

reset: clean
	-rm -f $(files)

$(files) : $(dir)/% : %
	cp -n $< $@
