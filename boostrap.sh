#!/usr/bin/env bash
set -e

DOTFILES="$HOME/.dotfiles"

echo "🖥 Applying macOS defaults..."
bash "$DOTFILES/macos/defaults.sh"

echo "🍺 Installing Homebrew..."
if ! command -v brew >/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "📦 Installing Brew packages..."
brew bundle --file "$DOTFILES/Brewfile"

echo "🎨 Installing iTerm2 Snazzy color scheme..."
curl -fsSL https://raw.githubusercontent.com/sindresorhus/iterm2-snazzy/main/Snazzy.itermcolors -o /tmp/Snazzy.itermcolors
open /tmp/Snazzy.itermcolors

echo "📦 Stowing packages..."
cd "$DOTFILES"
for pkg in zsh git; do
  stow --verbose --target="$HOME" "$pkg"
done

# Load and update Zinit
zsh -c "source ~/.zshrc && zinit self-update"

# Alacritty config for macOS
ln -nfs "$DOTFILES/zsh/.config/alacritty/alacritty.macos.toml" "$DOTFILES/zsh/.config/alacritty/alacritty.toml"

echo "✨ Bootstrap complete! Restart your terminal"
