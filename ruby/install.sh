#!/usr/bin/env bash
set -e

DOTFILES="$HOME/.dotfiles"
MODULE_DIR="$HOME/.config/zsh"

echo "💎 Installing rbenv + ruby-build..."
brew install rbenv ruby-build

echo "🔧 Initializing rbenv..."
eval "$(rbenv init -)"

echo "📦 Installing Ruby..."
# Prequisites
brew install shared-mime-info openssl@3

RUBY_CFLAGS="-Wno-error=implicit-function-declaration" \
  rbenv install 2.7.1
gem install bundler
rbenv global 2.7.1
rbenv rehash

echo "🧩 Enabling Ruby module..."
ln -nfs "$DOTFILES/ruby/module.zsh" "$MODULE_DIR/ruby.zsh"

echo "✔ Ruby module installed!"
