HISTSIZE=1000000
SAVEHIST=1000000
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify
setopt hist_ignore_space

export DOTFILES="$HOME/.dotfiles"
export MODULE_DIR="$HOME/.config/zsh"
for mod in "$MODULE_DIR"/*.zsh; do
  [[ -f "$mod" ]] && source "$mod"
done

eval "$(starship init zsh)"
eval $(thefuck --alias)
