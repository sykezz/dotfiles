#!/usr/bin/env bash
set -e

# https://github.com/sdkman/homebrew-tap
brew tap sdkman/tap
brew install sdkman-cli

echo "🛠 Installing Java and Maven via SDKMAN..."
sdk install java
sdk install maven

echo "🧩 Enabling Java module..."
ln -nfs "$DOTFILES/java/module.zsh" "$MODULE_DIR/java.zsh"

echo "☕ Java module installed!"
