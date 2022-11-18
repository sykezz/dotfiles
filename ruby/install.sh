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
brew install shared-mime-info openssl@1.1
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@1.1/lib/pkgconfig"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=/opt/homebrew/opt/openssl@1.1"

RUBY_CFLAGS="-Wno-error=implicit-function-declaration" \
  rbenv install 2.6.10
gem install bundler
rbenv global 2.6.10
rbenv rehash

echo "🧩 Enabling Ruby module..."
ln -nfs "$DOTFILES/ruby/module.zsh" "$MODULE_DIR/ruby.zsh"

echo "✔ Ruby module installed!"
