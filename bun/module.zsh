# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

alias b="bun"
alias bi="bun install"
alias br="bun run"
alias bx="bunx"    # npx equivalent
