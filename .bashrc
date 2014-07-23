#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#I can forget sudo!!
if [ $UID -ne 0 ]; then
    alias pacman='sudo pacman'
    alias reboot='sudo reboot'
fi


###ALIAS###
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -al'
alias clock='date +"%T"'
alias edit='vim'
alias ping='ping -c1 -s.5'
alias mkdir='mkdir -pv' #create parent directories on demand
alias pacclean='pacman -R $(pacman -Qdtq)'
alias koltsegvetes='libreoffice --calc ~/google-drive/Eindhoven/koltekezes.ods &'
alias gd='git diff'
alias ga='git add'
alias gc='git commit'
alias gs='git status'
alias tcst='cd ~/programs/tcst/'

#Prompt
PS1='[\A]\[$(tput setaf 2)\]\u\[$(tput sgr0)\]@\[$(tput setaf 2)$(tput bold)\]\h:\[$(tput sgr0)\]\w\$ '
export PS1
