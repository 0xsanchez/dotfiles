#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias la='ls -a'
alias ll='ls -l'

alias mkvenv='python -m venv'
alias av='source .venv/bin/activate'
alias py='python'

BG_GREY='\e[48;5;252m'
BG_BLUE='\e[48;5;12m'

FG_BLACK='\e[38;5;232m'
FG_GREY='\e[38;5;252m'
FG_BLUE='\e[38;5;12m'

BG_RESET='\e[49m'
FG_NORMAL='\e[0m'

RESET='\e[0m'

LEFT_C=''
RIGHT_C=''

prompt_path() {
    full_path="$PWD"
    if [[ $full_path == "$HOME" ]];then
        echo " ~"
    elif [[ $full_path == "$HOME/"* ]];then
        echo " ~${full_path#$HOME}"
    else
        echo " $full_path"
    fi
}

if [[ "$TERM" == "linux" ]];then
    PS1='[\u@\h \W]\$ '
else
    static_start="\[$FG_GREY\]$LEFT_C\[$BG_GREY\]\[$FG_BLACK\] 󰣇 \[$FG_GREY$BG_BLUE\]$RIGHT_C"
    dir="\[$FG_NORMAL\]\[$BG_BLUE\]\$(prompt_path)\[$RESET\]\[$BG_BLUE\]\[$FG_BLUE\] \[$BG_RESET\]$RIGHT_C\[$RESET\]"
    PS1="$static_start $dir "
fi
