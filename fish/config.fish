alias vim="nvim"
alias cd="z"
alias cat="bat"
alias grep="rg"

set PATH "/opt/homebrew/bin:$PATH"
set PATH "$HOME/.local/bin:$PATH"

set -Ux EDITOR nvim

set -x STARSHIP_CONFIG ~/.config/starship/starship.toml
starship init fish | source

set -gx FZF_CTRL_T_OPTS "--style full --walker-skip .git,node_modules,target --preview 'bat -n --color=always {}' --bind 'ctrl-/:change-preview-window(down|hidden|)'"
fzf --fish | source

mise activate fish | source
zoxide init fish | source
