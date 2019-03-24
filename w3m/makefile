all : README.func README.keymap

README.func : README.func.EUC-JP
	iconv -f EUC-JP -t UTF-8 $< > $@
README.keymap : README.keymap.EUC-JP
	iconv -f EUC-JP -t UTF-8 $< > $@
