#!/usr/bin/env bash
set -e
VERSION="3.14"

### Install uv if not installed
if ! command -v uv >/dev/null 2>&1; then
  curl -fsSL https://astral.sh/uv/install.sh | sh
  source $HOME/.local/bin/env
fi

### Install Python via uv
echo "🐍 Installing Python via uv..."
uv python install $VERSION

### Install direnv
if ! command -v direnv >/dev/null 2>&1; then
  brew install direnv
fi

### Install ruff via uv tool
echo "🧹 Installing Ruff (linter/formatter) via uv..."
uv tool install ruff

### Stow python config (python-version, ruff config, envrc)
echo "🔗 Stowing Python files..."
stow --target="$HOME" python

### Enable module inside ZSH
echo "🧩 Enabling python module..."
ln -nfs "$DOTFILES/python/module.zsh" "$MODULE_DIR/python.zsh"

echo "🐍 Python module installed successfully!"
