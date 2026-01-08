# ZSH plugin manager
source $(brew --prefix)/opt/zinit/zinit.zsh

ZINIT[OPTIMIZE_OUT_DISK_ACCESSES]=1

# Load Zinit plugins with turbo mode
zinit wait lucid for \
    Aloxaf/fzf-tab \
    zsh-users/zsh-autosuggestions \
    zsh-users/zsh-completions \
    zsh-users/zsh-syntax-highlighting

# Oh My Zsh plugins via Zinit
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::command-not-found
