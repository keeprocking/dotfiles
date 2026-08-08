() {
  local cache_dir=~/.cache/zsh/completions
  mkdir -p "$cache_dir"

  typeset -A completions=(
    kubectl 'kubectl completion zsh'
    kind 'kind completion zsh'
    flux 'flux completion zsh'
  )

  local k v
  for k v in "${(@kv)completions}"; do
    local cache="$cache_dir/_$k"
    if [[ ! -f "$cache" ]] && type "$k" &>/dev/null; then
      eval "$v" > "$cache"
    fi
  done

  fpath+="$cache_dir"
}

zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*' menu no
zstyle ':completion:*:ssh:*' hosts $(grep -s '^Host ' ~/.ssh/config | awk '{print $2}' | grep -v '*')
zstyle ':completion:*:*:ssh:*' tag-order hosts
