all : shs emacz w3ms bins

.PHONY: shs emacz w3ms bins
shs   : $(HOME)/.bashrc $(HOME)/.shrc $(HOME)/.profile $(HOME)/.bash_profile
emacz : $(HOME)/.emacs.d/init.el
w3ms  : $(HOME)/.w3m/bookmark.html $(HOME)/.w3m/config $(HOME)/.w3m/keymap
bins  : $(HOME)/bin/see

#$(shs)  : %
#	cp $< $@
#$(emacz): emacs/%
#	cp -n $< $@
#$(w3ms) : w3m/%
#	cp -n $< $@
#$(bins) : bin/%
#	cp $< $@

$(HOME)/.bashrc           : .bashrc
	cp $< $@
$(HOME)/.shrc             : .shrc
	cp $< $@
$(HOME)/.profile          : .profile
	cp $< $@
$(HOME)/.bash_profile     : .bash_profile
	cp $< $@
$(HOME)/.emacs.d/init.el  : emacs/init.el
	cp -n $< $@
$(HOME)/.w3m/bookmark.html: w3m/bookmark.html
	cp -n $< $@
$(HOME)/.w3m/config       : w3m/config
	cp -n $< $@
$(HOME)/.w3m/keymap       : w3m/keymap
	cp -n $< $@
$(HOME)/bin/see           : bin/see
	cp $< $@
