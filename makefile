all : sh emacs

.PHONY: sh emacs
sh    : $(HOME)/.bashrc $(HOME)/.shrc $(HOME)/.profile $(HOME)/.bash_profile
emacs : $(HOME)/.emacs.d/init.el

$(HOME)/.bashrc : .bashrc
	cp $< $@
$(HOME)/.shrc : .shrc
	cp $< $@
$(HOME)/.profile : .profile
	cp $< $@
$(HOME)/.bash_profile : .bash_profile
	cp $< $@
$(HOME)/.emacs.d/init.el: init.el
	cp $< $@
