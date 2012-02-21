# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.r3volut1oner/bash_aliases ]; then
    . ~/.r3volut1oner/bash_aliases.sh
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
#    . /etc/bash_completion
#fi

# PS1

PS1="\[\e[1;34m\][\u@\h]\[\e[m\] \[\e[1;32m\]\w \[\e[1;37m\]\$ \[\e[m\]"

# setxkbmap -option grp:switch,grp:alt_shift_toggle,grp_led:scroll us,ru,il
