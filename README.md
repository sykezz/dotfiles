# dotfiles (macOS)

Modular dotfiles setup for macOS using:

- GNU Stow
- Per-module install scripts
- Module loader via `zsh.d/*.zsh`
- Oh-My-Zsh + Powerlevel10k
- Ruby
- Python
- Docker
- Kubectl

## Setup

```sh
git clone https://github.com/yourname/dotfiles ~/.dotfiles
cd ~/.dotfiles
./bootstrap
```

### Install Module

Run the `install.sh` script from the module directory. Eg:
```
✗ python/install.sh
🐍 Installing Python 3.12 via uv...
Python 3.12 is already installed
🧹 Installing Ruff (linter/formatter) via uv tool...
`ruff` is already installed
🔗 Stowing Python files...
🧩 Enabling python module...
🐍 Python module installed successfully!
```