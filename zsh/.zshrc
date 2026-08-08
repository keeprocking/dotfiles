source ~/.zsh/zcomet.zsh

zcomet load sindresorhus/pure async.zsh pure.zsh
zcomet load junegunn/fzf shell completion.zsh key-bindings.zsh
zcomet load agkozak/zsh-z

source ~/.zsh/prompt.zsh
source ~/.zsh/history.zsh
source ~/.zsh/keybindings.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/fzf.zsh
source ~/.zsh/wsl.zsh
source ~/.zsh/completions.zsh

[[ -r ~/.zshrc.local ]] && source ~/.zshrc.local

zcomet compinit

zcomet load aloxaf/fzf-tab
zcomet load zsh-users/zsh-syntax-highlighting
