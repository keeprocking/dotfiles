if [[ -z "$WSL_DISTRO_NAME" ]]; then
  return
fi

() {
  local brew="/home/linuxbrew/.linuxbrew/bin/brew"
  [[ -x "$brew" ]] && eval "$("$brew" shellenv zsh)"
}

eval "$(keychain --eval id_ed25519 -q)"

alias pbcopy=clip.exe

set_proxy() {
  export http_proxy="http://$(ip route show default | awk '{print $3}'):2082"
  export https_proxy="$http_proxy"
  export no_proxy="localhost,127.0.0.1,::1"
}

unset_proxy() {
  unset http_proxy https_proxy no_proxy
}
