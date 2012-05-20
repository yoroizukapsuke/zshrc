setopt complete_aliases # aliased ls needs if file/dir completions work

alias _='sudo' # Super user

alias ..='cd ..'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias cd/='cd /'

alias 1='cd -'
alias 2='cd +2'
alias 3='cd +3'
alias 4='cd +4'
alias 5='cd +5'
alias 6='cd +6'
alias 7='cd +7'
alias 8='cd +8'
alias 9='cd +9'


alias md='mkdir -p'
alias rd=rmdir
alias d='dirs -v'

alias where="command -v"
alias j="jobs -l"
alias la="ls -a"
alias lf="ls -F"
alias ll="ls -l"
alias sl=ls # often screw this up

alias du="du -h"
alias df="df -h"

alias su="su -l"

alias afind='ack-grep -il'

case "${OSTYPE}" in
    freebsd*|darwin*)
        alias ls="ls -G -w"
        ;;
    linux*)
        alias ls="ls --color=auto"
        ;;
esac

