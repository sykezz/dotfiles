#!/usr/bin/env bash
set -e

VERSION="3.12"

### Install uv if not installed
if ! command -v uv >/dev/null 2>&1; then
  curl -fsSL https://astral.sh/uv/install.sh | sh
  source $HOME/.local/bin/env
fi

### Install Python via uv
echo "🐍 Installing Python 3.12 via uv..."
uv python install $VERSION

### Set global python version (optional)
echo $VERSION > "$DOTFILES/python/.python-version"

### Install direnv
if ! command -v direnv >/dev/null 2>&1; then
  brew install direnv
fi

### Install ruff via uv tool
echo "🧹 Installing Ruff (linter/formatter) via uv tool..."
uv tool install ruff

### Stow python config (python-version, ruff config, envrc)
echo "🔗 Stowing Python files..."
stow --target="$HOME" python

### Enable module inside ZSH
echo "🧩 Enabling python module..."
ln -nfs "$DOTFILES/python/module.zsh" "$MODULE_DIR/python.zsh"

echo "🐍 Python module installed successfully!"
