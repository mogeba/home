# home
## rc files for termux/Android

### contents
- ${HOME}/.shrc ${HOME}/.profile ${HOME}/.bashrc ${HOME}/.bash_profile
- ${HOME}/.emacs.d/init.el

### load order

- sh, dash
	- login
		( [.profile](.profile)
			( [.shrc](.shrc) ))
	- every
		[.shrc](.shrc)

- bash
	- login
		( ( [.bashrc](.bashrc)
				( [.shrc](.shrc) ))
			( [.bash_profile](.bash_profile)
				( [.profile](.profile) )))
	- every
		( [.bashrc](.bashrc)
			( [.shrc](.shrc) ))

### commands

- sh, dash [.shrc](.shrc)
| commnd | description                                                      |
|:-------|:-----------------------------------------------------------------|
| args   | print arguments                                                  |
| bak    | delete ~file(emacs-backup-file)                                  |
| see    | when specified file, cat the file. when specified directory, ls. |
| d      | download                                                         |
| p      | gather pkg install                                               |
| m      | make wrapper                                                     |
| t      | readline-wrapped tinyscheme 1.41 with a few extensions           |
- bash [.bashrc](.bashrc)
	- typetest inspect variable whether it is specified type
	- vars     echo name and value of variables