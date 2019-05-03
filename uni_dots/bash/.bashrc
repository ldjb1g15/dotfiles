#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# source bash aliases file
if [ -f ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi

# general system aliases
alias ls='ls --color=auto'
alias la='ls -la --color=auto'

# set PS1 format and colours
COL1="\[$(tput setaf 1)\]"
COL2="\[$(tput setaf 2)\]"
COL3="\[$(tput setaf 3)\]"
COL4="\[$(tput setaf 4)\]"
COL5="\[$(tput setaf 5)\]"

RESET="\[$(tput sgr0)\]"

PS1=" [ ${COL1}\u${RESET} @ ${COL2}\h${RESET} ] ${COL3}\w${RESET} \n > "
