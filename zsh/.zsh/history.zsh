HISTFILE=~/.local/state/zsh/history
mkdir -p "${HISTFILE:h}"

HISTSIZE=5000
SAVEHIST="$HISTSIZE"
HISTDUP=erase

setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups
