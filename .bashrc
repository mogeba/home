#
# .bashrc
#
echo "loading .shrc from .bashrc"
. ~/.shrc

echo "loading .bashrc"

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
  { args  help ;
    look       ;
    d          ;
    e     help ;
    m     help ;
    r          ;
    x          ;
    ts    help ;
    rmbak help ;
  } | less
}

e ()
{
  if [ $# -eq 0 ] ; then
    emacs "${CAFS[@]}"
  else
    if [ $# -eq 1 -a "${1}" = "help" ] ; then
      echo -------
      echo "SYNOPSIS"
      echo "  e [help|file ...]"
      echo "DESCRIPTION"
      echo "  emacs"
      echo "SEE"
      echo "  emacs --help"
      echo
    elif [ $# -eq 1 -a "${1}" = "habits" ] ; then
      emacs "${HABITS[@]}"
    else
      CAFS=("$@")
      emacs "${CAFS[@]}"
    fi
  fi
}

r ()
{
  if [ $# -eq 0 ] ; then
    echo -------
    echo "SYNOPSIS"
    echo "  r [ts|slib|e|emacs|bin|share|man]"
    echo "DESCRIPTION"
    echo "  read the documents and list files in the directories."
    echo "  no argument specified, displays this message"
    echo
  else
    for var in "$@" ; do
      case "${var}" in
        ts )
          { look "${HOME}/tinyscheme"                   ;
            look "${HOME}/tinyscheme/Manual.txt"        ;
            look "${TOP}/usr/share/tinyscheme"          ;
            look "${TOP}/usr/share/tinyscheme/init.scm" ;
	  } | less
          break;;
        slib )
          { look "${HOME}/slib"  ;
            #look "${HOME}/slib"  ;
	  } | less
          break;;
        e | emacs )
          { look "${TOP}/usr/share/emacs/26.1/lisp" ;
	  } | less
          break;;
        share )
          { look "${TOP}/usr/share" ; } | less
          break;;
        bin )
          { look "${TOP}/usr/bin" ; } | less
          break;;
        etc )
          { look "${TOP}/usr/etc" ; } | less
          break;;
        inc | include )
          { look "${TOP}/usr/include" ; } | less
          break;;
        lib )
          { look "${TOP}/usr/lib" ; } | less
          break;;
        man )
	  { find "${TOP}/usr/share/man" | sort ; } | less
          break;;
        * )
	  if [ -d "${var}" ]; then
	    { find "${var}" | sort ; } | less
	  else
	    { look `dirname "${var}"`;
	      look "${var}" ;
	    } | less
	  fi
          break;;
      esac
    done
  fi
}
