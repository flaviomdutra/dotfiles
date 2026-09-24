alias vim="nvim"
 
set PATH "/opt/homebrew/bin:$PATH"
set PATH "$HOME/.local/bin:$PATH"

set -x STARSHIP_CONFIG ~/.config/starship/starship.toml
starship init fish | source

mise activate fish | source

