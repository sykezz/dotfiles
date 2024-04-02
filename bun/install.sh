#!/usr/bin/env bash
set -e

echo "🍞 Installing Bun..."
curl -fsSL https://bun.sh/install | bash

echo "🧩 Enabling Bun module..."
ln -nfs "$DOTFILES/bun/module.zsh" "$MODULE_DIR/bun.zsh"

echo "✔ Bun module installed!"
