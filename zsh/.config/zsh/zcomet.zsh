() {
  local zcomet_home=~/.local/share/zcomet
  local zcomet_bin="$zcomet_home/bin"

  if [[ ! -f "$zcomet_bin/zcomet.zsh" ]]; then
    command git clone https://github.com/agkozak/zcomet.git "$zcomet_bin"
  fi

  source "$zcomet_bin/zcomet.zsh"

  zstyle ':zcomet:*' home-dir "$zcomet_home"
}
