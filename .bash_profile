#
# .bash_profile
#
echo "loading .profile from .bash_profile"
. ~/.profile

echo "loading .bash_profile"

echo ------- variable
HABITS=(~/bin/dere.scm ~/bin/rtk4.scm)
CAFS=(~/.profile)
vars HABITS CAFS
