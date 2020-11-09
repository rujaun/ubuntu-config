#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

EDITOR=vim
COLORTERM=truecolor

alias ls='ls --color=auto'
export PS1='\u@\h:\[\e[33m\]\w\[\e[0m\]\$ '

alias wifilist='nmcli device wifi rescan && nmcli d wifi list'
alias wificon='echo "nmcli device wifi connect <ssid> password <password>"'

alias pythonv='python -m venv env'
alias pythonva='source env/bin/activate'