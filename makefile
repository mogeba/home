rcs   = $(HOME)/.bashrc $(HOME)/.shrc $(HOME)/.profile $(HOME)/.bash_profile $(HOME)/.git-prompt.sh
emacz = $(HOME)/.emacs.d/init.el
w3ms  = $(HOME)/.w3m/bookmark.html $(HOME)/.w3m/config $(HOME)/.w3m/keymap $(HOME)/.w3m/jee.html
bins  = $(HOME)/bin/merge-fortunes $(HOME)/bin/select-fortune $(HOME)/bin/jee

all : $(rcs) $(emacz) $(w3ms) $(bins)

.PHONY: clean pull push resetw3m kotodama
clean:
	rm -f $(bins)
pull:
	git pull
push:
	git push
resetw3m:
	rm -f $(w3ms)
kotodama:
	bin/merge-fortunes fortunes-jp/kotodama.fortune > fortunes-jp/tmp.fortune
	cp fortunes-jp/tmp.fortune fortunes-jp/kotodama.fortune
	rm fortunes-jp/tmp.fortune

### sh, bash
$(HOME)/.bashrc            : .bashrc
	cp $< $@
$(HOME)/.shrc              : .shrc
	cp $< $@
$(HOME)/.profile           : .profile
	cp $< $@
$(HOME)/.bash_profile      : .bash_profile
	cp $< $@
$(HOME)/.git-prompt.sh     : .git-prompt.sh
	cp $< $@
### emacs
$(HOME)/.emacs.d/init.el   : emacs/init.el
	cp -n $< $@
### w3m
$(HOME)/.w3m/bookmark.html : w3m/bookmark.html
	cp -n $< $@
$(HOME)/.w3m/config        : w3m/config
	cp -n $< $@
$(HOME)/.w3m/keymap        : w3m/keymap
	cp -n $< $@
$(HOME)/.w3m/jee.html      : w3m/jee.html
	cp -n $< $@
### bin
$(HOME)/bin/merge-fortunes : bin/merge-fortunes
	cp $< $@
$(HOME)/bin/select-fortune : bin/select-fortune
	cp $< $@
$(HOME)/bin/jee            : bin/jee
	cp $< $@
