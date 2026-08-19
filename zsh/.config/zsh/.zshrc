source "$ZDOTDIR/zcomet.zsh"

zcomet load sindresorhus/pure async.zsh pure.zsh
zcomet load junegunn/fzf shell completion.zsh key-bindings.zsh
zcomet load agkozak/zsh-z

source "$ZDOTDIR/prompt.zsh"
source "$ZDOTDIR/history.zsh"
source "$ZDOTDIR/keybindings.zsh"
source "$ZDOTDIR/aliases.zsh"
source "$ZDOTDIR/fzf.zsh"
source "$ZDOTDIR/wsl.zsh"
source "$ZDOTDIR/completions.zsh"

[[ -r "$ZDOTDIR/.zshrc.local" ]] && source "$ZDOTDIR/.zshrc.local"

zcomet compinit

zcomet load aloxaf/fzf-tab
zcomet load zsh-users/zsh-syntax-highlighting
