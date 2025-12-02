#!/usr/bin/env bash

# Fast key repeat
defaults write -g KeyRepeat -int 5
defaults write -g InitialKeyRepeat -int 25

# File extensions visible
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Dock
defaults write com.apple.dock autohide -bool false
defaults write com.apple.dock tilesize -int 40
killall Dock || true

echo "✔ macOS defaults applied."
