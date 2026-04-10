# ZSH plugin manager
source /opt/homebrew/opt/zinit/zinit.zsh

ZINIT[OPTIMIZE_OUT_DISK_ACCESSES]=1

# Load Zinit plugins with turbo mode
zinit wait lucid for \
    Aloxaf/fzf-tab \
    zsh-users/zsh-autosuggestions \
    blockf zsh-users/zsh-completions \
    atload"zicompinit; zicdreplay" zsh-users/zsh-syntax-highlighting \
    sunlei/zsh-ssh \
    id-as"kubectl" as"completion" atclone"kubectl completion zsh > _kubectl" atpull"%atclone" run-atpull \
    zdharma-continuum/null

# Oh My Zsh plugins + libraries via Zinit
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::command-not-found
zinit snippet OMZL::directories.zsh
zinit snippet OMZL::clipboard.zsh
