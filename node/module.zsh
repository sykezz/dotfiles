export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

alias ni="npm install"
alias nid="npm install --save-dev"
alias nig="npm install -g"
alias nu="npm update"
alias nr="npm run"
alias nci="npm ci"

alias b="bun"
alias bi="bun install"
alias br="bun run"
alias bx="bunx"    # npx equivalent
