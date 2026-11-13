#!/usr/bin/env bash
set -e

# https://github.com/sdkman/homebrew-tap
brew tap sdkman/tap
brew trust --formula sdkman/tap/sdkman-cli
brew install sdkman-cli

echo "🛠 Installing Java and Maven via SDKMAN..."
# sdk install java 8.0.482-zulu
sdk install java 17.0.21.0+9-tem
sdk install java 21.0.13.0+9-tem
sdk install maven

echo "🧩 Enabling Java module..."
ln -nfs "$DOTFILES/java/module.zsh" "$MODULE_DIR/java.zsh"

echo "☕ Java module installed!"
