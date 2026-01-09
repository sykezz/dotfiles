# Java and Maven via sdkman
export SDKMAN_DIR=$(brew --prefix sdkman-cli)/libexec
[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"

# Useful aliases
alias javav="java -version"
alias jcmp="javac"
alias jrun="java"
