# Changing/making/removing directory
setopt auto_name_dirs
setopt auto_pushd        # cd時にディレクトリスタックにpushdする
setopt pushd_ignore_dups


cd () {
    if   [[ "x$*" == "x..." ]]; then
        cd ../..
    elif [[ "x$*" == "x...." ]]; then
        cd ../../..
    elif [[ "x$*" == "x....." ]]; then
        cd ../../..
    elif [[ "x$*" == "x......" ]]; then
        cd ../../../..
    else
        builtin cd "$@"
    fi
}

# mkdir & cd to it
function mcd() {
mkdir -p "$1" && cd "$1";
}
