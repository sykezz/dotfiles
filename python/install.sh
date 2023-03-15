#!/usr/bin/env bash
set -e

DOTFILES="$HOME/.dotfiles"
MODULE_DIR="$HOME/.config/zsh"

### Install Python
echo "🐍 Installing Python 3.10..."
brew install python@3.10

### Install direnv
if ! command -v direnv >/dev/null 2>&1; then
  brew install direnv
fi

### Stow python config
echo "🔗 Stowing Python files..."
stow --target="$HOME" python

### Enable module inside ZSH
echo "🧩 Enabling python module..."
ln -nfs "$DOTFILES/python/module.zsh" "$MODULE_DIR/python.zsh"

echo "✔ Python module installed successfully!"
