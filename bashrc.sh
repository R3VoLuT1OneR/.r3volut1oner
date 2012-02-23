# Editor
export EDITOR='/usr/bin/vim'

# Simple PS1
PS1="\[\e[1;34m\][\u@\h]\[\e[m\] \[\e[1;32m\]\w \[\e[1;37m\]\$ \[\e[m\]"

# Alias definitions.
if [ -f ~/.r3volut1oner/bash/aliases.sh ]; then
    . ~/.r3volut1oner/bash/aliases.sh
fi

# Load svn extend
if [ -f ~/.r3volut1oner/bash/svn_extend.sh ]; then
    . ~/.r3volut1oner/bash/svn_extend.sh
fi

# Load git terminal extend
if [ -f ~/.r3volut1oner/bash/git_ps1.sh ]; then
    . ~/.r3volut1oner/bash/git_ps1.sh
fi
