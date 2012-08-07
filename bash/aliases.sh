# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Load NERDTree in vim
alias vimt='vim -c "NERDTree" -c "TlistToggle"'

# some more ls aliases
alias lla='ls -AhlF'
alias ll='ls -hlF'
alias la='ls -A'
alias l='ls -CF'

# Add aliases to the projects
for d in `ls ~/Development`
do
    alias cd:$d="cd ~/Development/$d"
done
