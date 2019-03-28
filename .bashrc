#
# .bashrc
#
echo "------- loading .shrc from .bashrc"
. ~/.shrc

echo "------- loading .git-prompt.sh from .bashrc"
. ~/.git-prompt.sh

echo "------- loading .bashrc"

echo ------- variables #exports
PS1='\n\[\e[30m\e[44m\] \D{%Y/%m/%d %H:%M:%S} \[\e[30m\e[46m\] \w \[\e[30m\e[42m\]$(__git_ps1 " %s ")\[\e[0m\]\n\$ '
#export PS1
echo "PS1='${PS1}'"

typetest ()
{
  local var=`declare -p ${2}`
  if [ "${var##declare ${1}}" = "${var}" ] ; then
    return 1
  else
    return 0
  fi
}

vars ()
{
  local var
  for var in "$@" ; do
    if typetest -a "${var}" ; then
      var="${var}[@]"
      echo "${var%%\[@\]}=(${!var})"
    else
      echo "${var}=${!var}"
    fi
  done
}

? ()
{
  { args help ;
    d         ;
    m    help ;
    r         ;
    x         ;
    t    help ;
    bak  help ;
  } | less
}
