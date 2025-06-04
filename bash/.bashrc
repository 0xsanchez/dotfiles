[[ $- != *i* ]] && return

export PS1="[\u@\h \w]\$ "
export EDITOR="vim"
export PATH="$PATH:~/go/bin"

alias ls='ls -lh --group-directories --color=auto'
