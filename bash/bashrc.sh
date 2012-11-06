BASE_DIR=`dirname $0`
BASE_R3V_DIR=`dirname $BASE_DIR`

# Editor
export EDITOR='/usr/bin/vim'

# Add bin path
export PATH=$BASE_R3V_DIR/bin:$PATH

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
