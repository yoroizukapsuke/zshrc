# version  controll system
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats ':(%s)%b'
zstyle ':vcs_info:*' actionformats ':(%s)%b|%a'
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

# prompt colors
case ${UID} in
0)
    PROMPT="%B%{[31m%}%/#%{[m%}%b "
    PROMPT2="%B%{[31m%}%_#%{[m%}%b "
    SPROMPT="%B%{[31m%}%r is correct? [n,y,a,e]:%{[m%}%b "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
    ;;
*)
    # PROMPT="%{${fg[blue]}%}[%n@%m] %(!.#.$) %{${reset_color}%} "
echo "hhhheeeello"
    PROMPT="%{${fg[yellow]}%}[%n@%m%1(v|%F{green}%1v%f|)%{${fg[yellow]}%}]%{${reset_color}%}%b "
    PROMPT2="%{${fg[blue]}%}%_> %{${reset_color}%}"
    SPROMPT="%{${fg[red]}%}correct: %R -> %r [nyae]? %{${reset_color}%}"
    RPROMPT="%{${fg[yellow]}%}[%~]%{${reset_color}%}  "
    ;;
esac

case "${TERM}" in
    kterm*|xterm)
        precmd() {
            echo -ne "\033]0;${USER}@${HOST%%.*}:${PWD}\007"
        }
        ;;
esac


