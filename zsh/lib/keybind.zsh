# bind key
bindkey -e               # キーバインドをemacsモードに設定
bindkey -v              # キーバインドをviモードに設定

# ctrl-w, ctrl-bキーで単語移動
bindkey "<ctrl>+W" forward-word
bindkey "<ctrl>+B" backward-word

bindkey "<ctrl>+P" history-beginning-search-backward-end
bindkey "<ctrl>+N" history-beginning-search-forward-end

bindkey "[Z" reverse-menu-complete  # Shift-Tabで補完候補を逆順する("\e[Z"でも動作する)
