#!/usr/bin/env bash
set -e

# Install Volta
echo "⚡ Installing Volta latest Node LTS version..."
brew install volta
volta install node

# Install Bun
if ! command -v bun >/dev/null; then
  echo "🍞 Installing Bun..."
  curl -fsSL https://bun.sh/install | bash
fi

echo "🧩 Enabling Node module..."
ln -nfs "$DOTFILES/node/module.zsh" "$MODULE_DIR/node.zsh"

echo "✔ Node module installed!"