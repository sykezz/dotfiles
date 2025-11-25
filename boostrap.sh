#!/usr/bin/env bash
set -e

DOTFILES="$HOME/.dotfiles"

echo "🍺 Installing Homebrew..."
if ! command -v brew >/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "📦 Installing Brew packages..."
brew bundle --file "$DOTFILES/Brewfile"

# OMZ custom:
mkdir -p "$ZSH_CUSTOM/plugins"
mkdir -p "$ZSH_CUSTOM/themes"
ln -nfs /opt/homebrew/share/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
ln -nfs /opt/homebrew/share/zsh-syntax-highlighting "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
ln -nfs /opt/homebrew/opt/powerlevel10k "/$ZSH_CUSTOM/themes/powerlevel10k"

echo "📦 Stowing packages..."
cd "$DOTFILES"
for pkg in zsh; do
  stow --verbose --target="$HOME" "$pkg"
done

echo "🖥 Applying macOS defaults..."
bash "$DOTFILES/macos/defaults.sh"

echo "✨ Bootstrap complete! Restart your terminal"
