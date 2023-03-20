# Load module configs
DOTFILES="$HOME/.dotfiles"
MODULE_DIR="$HOME/.config/zsh"
for mod in "$MODULE_DIR"/*.zsh; do
  [[ -f "$mod" ]] && source "$mod"
done

eval $(thefuck --alias)
