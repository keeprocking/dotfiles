() {
  local zcomet_dir=~/.zcomet/bin

  if [[ ! -f "$zcomet_dir/zcomet.zsh" ]]; then
    command git clone https://github.com/agkozak/zcomet.git "$zcomet_dir"
  fi

  source "$zcomet_dir/zcomet.zsh"
}
