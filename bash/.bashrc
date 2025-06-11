[[ $- != *i* ]] && return
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\w\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
HISTSIZE= HISTFILESIZE=

export EDITOR="nvim" VISUAL="nvim"
export PATH="$PATH:~/go/bin"

alias ls='ls -hN --color=auto --group-directories-first'
alias vi='nvim'
alias cp="cp -v"
alias mv="mv -v"
alias rm="rm -v"
