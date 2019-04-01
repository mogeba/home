dir = $(HOME)
rcs = $(HOME)/.bashrc $(HOME)/.shrc $(HOME)/.profile $(HOME)/.bash_profile $(HOME)/.git-prompt.sh

.PHONY: all install clean reset pull push kotodama
all : $(rcs)
	make install -C bin
	make install -C emacs
	make install -C w3m

install: all

clean:
	make clean -C bin
	make clean -C emacs
	make clean -C w3m

reset: clean
	make reset -C bin
	make reset -C emacs
	make reset -C w3m
pull:
	git pull
push:
	git push
kotodama:
	make kotodama -C bin

### rcs -- sh, bash
$(rcs) : $(dir)/% : %
	cp $< $@
