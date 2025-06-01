[[ $- != *i* ]] && return

export PS1='[\u@\h \w]\$ '
export EDITOR='vim'

alias ls='ls -lh --group-directories --color=auto'
