alias vim="nvim"
alias cd="z"
alias cat="batcat"

set -x STARSHIP_CONFIG ~/.config/starship/starship.toml
starship init fish | source

fzf --fish | source
zoxide init fish | source

export FZF_CTRL_T_OPTS="
  --style full
  --walker-skip .git,node_modules,dist,target,build
  --preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'
"

# set PATH "$HOME/go/bin:$PATH"
# set PATH "$PATH:$(go env GOPATH)/bin"
