shs   = $(HOME)/.bashrc $(HOME)/.shrc $(HOME)/.profile $(HOME)/.bash_profile
emacz = $(HOME)/.emacs.d/init.el
w3ms  = $(HOME)/.w3m/bookmark.html $(HOME)/.w3m/config $(HOME)/.w3m/keymap $(HOME)/.w3m/jee.html
bins  = $(HOME)/bin/jee

all : $(shs) $(emacz) $(w3ms) $(bins)

.PHONY: pull push resetw3m kotodama
pull:
	git pull
push:
	git push
resetw3m:
	rm -f $(w3ms)
kotodama:
	fortunes-jp/fortune.rb fortunes-jp/kotodama.fortune > fortunes-jp/tmp.fortune
	cp fortunes-jp/tmp.fortune fortunes-jp/kotodama.fortune
	rm fortunes-jp/tmp.fortune

### sh, bash
$(HOME)/.bashrc           : .bashrc
	cp $< $@
$(HOME)/.shrc             : .shrc
	cp $< $@
$(HOME)/.profile          : .profile
	cp $< $@
$(HOME)/.bash_profile     : .bash_profile
	cp $< $@
### emacs
$(HOME)/.emacs.d/init.el  : emacs/init.el
	cp -n $< $@
### w3m
$(HOME)/.w3m/bookmark.html: w3m/bookmark.html
	cp -n $< $@
$(HOME)/.w3m/config       : w3m/config
	cp -n $< $@
$(HOME)/.w3m/keymap       : w3m/keymap
	cp -n $< $@
$(HOME)/.w3m/jee.html: w3m/jee.html
	cp -n $< $@
### bin
$(HOME)/bin/jee           : bin/jee
	cp $< $@
