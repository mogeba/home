all : README.func README.keymap

.PHONY: jee
jee: jee.html

README.func : README.func.EUC-JP
	iconv -f EUC-JP -t UTF-8 $< > $@
README.keymap : README.keymap.EUC-JP
	iconv -f EUC-JP -t UTF-8 $< > $@

jee.html: $(HOME)/.w3m/jee.html
	cp $< $@
