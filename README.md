# dotfiles (macOS)

Modular dotfiles setup for macOS using:

- GNU Stow
- Per-module install scripts
- Module loader via `zsh.d/*.zsh`
- Alacritty + Zinit + Oh-My-Zsh + Starship
- Ruby
- Python
- Docker
- Kubectl
- Terraform
- Bun
- Java

## Setup

```sh
git clone https://github.com/sykezz/dotfiles ~/.dotfiles
cd ~/.dotfiles
./bootstrap.sh
```

### Install Module

Run the `install.sh` script from the module directory. Eg:
```
✗ python/install.sh
🐍 Installing Python 3.10...
🔗 Stowing Python files...
🧩 Enabling python module...
🐍 Python module installed successfully!
```