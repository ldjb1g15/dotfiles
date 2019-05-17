#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# source bash aliases file
source $HOME/.bash_aliases

# system aliases
alias ls='ls --color=auto'
alias la='ls -la --color=auto'

# PS1 set
COL1="\[$(tput setaf 1)\]"
COL2="\[$(tput setaf 2)\]"
COL3="\[$(tput setaf 3)\]"
COL4="\[$(tput setaf 4)\]"
COL5="\[$(tput setaf 5)\]"

RESET="\[$(tput sgr0)\]"

PS1=" [ ${COL1}\u${RESET} @ ${COL2}\h${RESET} ] ${COL3}\w${RESET} \n > "
