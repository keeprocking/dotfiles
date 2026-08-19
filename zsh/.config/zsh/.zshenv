skip_global_compinit=1

export LANG=en_US.UTF-8
export EDITOR=vim
export LESS=FRX

ZSHZ_DATA=~/.local/share/zsh-z/db

path+=(
  ~/bin
  ~/go/bin
)

[[ -r "$ZDOTDIR/.zshenv.local" ]] && source "$ZDOTDIR/.zshenv.local"
