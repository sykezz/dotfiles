# Ensure uv is in PATH (uv installer adds ~/.local/bin)
export PATH="$HOME/.local/bin:$PATH"

# Use uv for Python execution
alias py="uv run python"

# uv pip is much faster than pip
alias pip="uv pip"
alias pipu="uv pip install --upgrade pip setuptools wheel"

# Create + activate venv in .venv
alias mkvenv='uv venv .venv && source .venv/bin/activate'

# Use ruff for formatting + linting
alias pylint="ruff check ."
alias pyfmt="ruff format ."
alias pyfix="ruff check . --fix"

# enable direnv (if installed)
if command -v direnv >/dev/null 2>&1; then
  eval "$(direnv hook zsh)"
fi
