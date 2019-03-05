# home
## rc files for termux/Android

### contents
- ${HOME}/.shrc ${HOME}/.profile ${HOME}/.bashrc ${HOME}/.bash_profile
- ${HOME}/.emacs.d/init.el

### load order

- sh, dash
	- login
		(.profile
			(.shrc))
	- every
		.shrc

- bash
	- login
		(.bashrc
			(.shrc))
		(.bash_profile
			(.profile)))
	- every
		(.bashrc
			(.shrc))

### commands

- sh, dash
	- args print arguments
	- bak  delete ~file(emacs-backup-file)
	- see  when specified file, cat the file. when specified directory, ls.
	- d    download
	- m    make wrapper
	- ts   tinyscheme wrapper

- bash
	- not implemented yet
