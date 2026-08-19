KEYTIMEOUT=5

zmodload zsh/complist

noop() { : }
zle -N noop

send-fzf-trigger() {
    LBUFFER="$LBUFFER**"
    zle fzf-completion
    LBUFFER="${LBUFFER//\*\*/}"
}
zle -N send-fzf-trigger

autoload edit-command-line
zle -N edit-command-line

bindkey -e

bindkey "^[[1;3D" backward-word # alt + left
bindkey "^[[1;3C" forward-word # alt + right
bindkey "^[[H" beginning-of-line # home
bindkey "^[[F" end-of-line # end
bindkey "^[[3~" delete-char # delete
bindkey "^[[3;3~" kill-word # alt + delete
bindkey "^[^?" backward-kill-word # alt + backspace
bindkey "^e" edit-command-line # ctrl + e
bindkey "^k" clear-screen # ctrl + k
bindkey '^a' send-fzf-trigger # ctrl + a

bindkey -M menuselect '^[' send-break # escape
bindkey -M menuselect "^[[5~" backward-word # page up
bindkey -M menuselect "^[[6~" forward-word # page down

bindkey "^[[1;5D" noop # ctrl + left
bindkey "^[[1;5C" noop # ctrl + right
bindkey "^[[1;2D" noop # shift + left
bindkey "^[[1;2C" noop # shift + right
bindkey "^[[5~" noop # page up
bindkey "^[[6~" noop # page down
