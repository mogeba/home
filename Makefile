MAKE   = make
CP     = cp
RM     = rm
GIT    = git

installs = $(HOME)/.bashrc $(HOME)/.shrc $(HOME)/.profile $(HOME)/.bash_profile $(HOME)/.git-prompt.sh

.PHONY: all install clean reset pull push kotodama
all : $(installs)
	$(MAKE) install -C bin
	$(MAKE) install -C emacs
	$(MAKE) install -C w3m

install: all

clean:
	$(MAKE) clean -C bin
	$(MAKE) clean -C emacs
	$(MAKE) clean -C w3m

reset: clean
	$(MAKE) reset -C bin
	$(MAKE) reset -C emacs
	$(MAKE) reset -C w3m
	-$(RM) -f $(installs)

pull:
	$(GIT) pull
push:
	$(GIT) push
kotodama:
	$(MAKE) kotodama -C bin

$(installs) : $(HOME)/% : %
	$(CP) $< $@
