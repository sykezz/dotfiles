#!/usr/bin/env bash
set -e

echo "💎 Installing rbenv + ruby-build..."
brew install rbenv ruby-build

echo "🔧 Initializing rbenv..."
eval "$(rbenv init -)"

echo "📦 Installing Ruby..."
brew install shared-mime-info openssl@3
rbenv install 3.0.7
gem install bundler
rbenv global 3.0.7
rbenv rehash

echo "🧩 Enabling Ruby module..."
ln -nfs "$DOTFILES/ruby/module.zsh" "$MODULE_DIR/ruby.zsh"

echo "✔ Ruby module installed!"
