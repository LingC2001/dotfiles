# ===================================================
# Path and Environment Variables
# ===================================================
export PATH=/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
export PATH=$(go env GOPATH)/bin:$PATH

# ===================================================
# CLI Tools Configuration
# ===================================================

# ---- fzf ----
eval "$(fzf --zsh)"
# change ctrl-t to ctrl-f
bindkey -r '^T'
bindkey '^F' fzf-file-widget

# use fd instead of find
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

# add preview
show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"

export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo \${}'"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "$show_file_or_dir_preview" "$@" ;;
  esac
}

# ----zoxide ----
eval "$(zoxide init zsh)"
alias cd="z"

# ---- bat ----
export BAT_THEME="Catppuccin Mocha"

# ---- eza ----
alias ls="eza -a --color=always --icons=always --group-directories-first"

# ---- starship ----
export STARSHIP_CONFIG="$HOME/.config/starship.toml"
eval "$(starship init zsh)"

# ---- zsh autosuggestions ----
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# ---- zsh syntax highlighting ----
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/opt/homebrew/share/zsh-syntax-highlighting/highlighters
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ===================================================
# Aliases
# ===================================================

# ---- general ----
alias python='python3'
alias pip='pip3'
alias rf='source ~/.zshrc'

# ---- git ----
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'