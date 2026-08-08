(( ${+commands[fzf]} )) || ~[fzf]/install --bin

export FZF_DEFAULT_OPTS="--info=hidden --border=none --no-scrollbar --no-separator"

_fzf_complete_killall() {
  _fzf_complete --prompt="killall> " --multi --preview='ps -o user,pid,ppid,cmd -C {1} 2>/dev/null' --preview-window=right:70% -- "$@" < <(
    ps -u "$USER" -o comm --no-headers | sort -u
  )
}

zstyle ':fzf-tab:*' use-fzf-default-opts yes
zstyle ':fzf-tab:*' fzf-min-height 20
zstyle ':fzf-tab:complete:killall:*' fzf-preview 'ps -o user,pid,ppid,cmd -C $word'
zstyle ':fzf-tab:complete:killall:*' fzf-flags --preview-window='right:70%'
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --group-directories-first --color=always $realpath'
