include ../Makefile.inc

dir      = $(HOME)/.w3m
installs = $(dir)/bookmark.html $(dir)/config $(dir)/keymap $(dir)/jee.html

.PHONY: all install clean reset
all: $(installs)

install: all

clean:

reset: clean
	-$(RM) -f $(installs)

$(installs) : $(dir)/% : %
	$(CP) -n $< $@
