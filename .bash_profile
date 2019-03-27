#
# .bash_profile
#
echo "------- loading .profile from .bash_profile"
. ~/.profile

echo "------- loading .bash_profile"

echo ------- exports
PS1='\n\[\e[30m\e[44m\] \D{%Y/%m/%d %H:%M:%S} \[\e[30m\e[46m\] \w \[\e[30m\e[42m\]$(__git_ps1 " (%s) ")\[\e[0m\]\n\$ '
#PS1='\n\[\e[30m\e[46m\e[1m\]\w\[\e[0m\]\n\$ '
export PS1
echo "PS1='${PS1}'"

echo ------- variable
#HABITS=(~/scheme/ts/dere.scm ~/scheme/ts/rtk4.scm)
#CAFS=(~/home/fortunes-jp/goethe.fortune ~/home/fortunes-jp/fortune.rb)
#vars HABITS CAFS
