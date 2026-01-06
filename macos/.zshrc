# add to path
export PATH=/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
export PATH=$(go env GOPATH)/bin:$PATH

# sourcing terminal packages
# starship
export STARSHIP_CONFIG="$HOME/.config/starship.toml"
eval "$(starship init zsh)"

# fuzzy find
[-f ~/.fzf.zsh] && source ~/.fzf.zsh

# zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh syntax highlighting
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/opt/homebrew/share/zsh-syntax-highlighting/highlighters
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# aliases
alias rf='source ~/.zshrc'
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'