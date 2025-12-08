autoload -Uz compinit && compinit

DOTFILES="$HOME/.dotfiles"
MODULE_DIR="$HOME/.config/zsh"
for mod in "$MODULE_DIR"/*.zsh; do
  [[ -f "$mod" ]] && source "$mod"
done

eval "$(starship init zsh)"
eval $(thefuck --alias)
