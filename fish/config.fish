alias vim="nvim"
alias cd="z"
alias cat="bat"
alias grep="rg"

set PATH "/opt/homebrew/bin:$PATH"
set PATH "$HOME/.local/bin:$PATH"

set -x STARSHIP_CONFIG ~/.config/starship/starship.toml
starship init fish | source

mise activate fish | source
zoxide init fish | source
