#!/usr/bin/env bash
set -e

DOTFILES="$HOME/.dotfiles"
MODULE_DIR="$HOME/.config/zsh"

echo "☕ Installing Java (OpenJDK 17)..."
brew install openjdk@17

# Ensure macOS knows about this JDK (Homebrew caveats)
sudo ln -sfn \
  /opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk \
  /Library/Java/JavaVirtualMachines/openjdk-17.jdk

echo "🧩 Enabling Java module..."
ln -nfs "$DOTFILES/java/module.zsh" "$MODULE_DIR/java.zsh"

echo "☕ Java module installed!"
