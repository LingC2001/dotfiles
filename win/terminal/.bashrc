# ===================================================
# CLI Tools Configuration
# ===================================================

# ---- fzf ----
source /usr/share/doc/fzf/examples/key-bindings.bash
source /usr/share/bash-completion/completions/fzf
# change ctrl-t to ctrl-f bash
bind -r "\C-t"
bind -x '"\C-f": "fzf-file-widget"'

# use fdfind instead of find
alias fd="fdfind"
export FZF_DEFAULT_COMMAND="fdfind --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fdfind --type=d --hidden --strip-cwd-prefix --exclude .git"

_fzf_compgen_path() {
  fdfind --hidden --exclude .git . "$1"
}
_fzf_compgen_dir() {
  fdfind --type=d --hidden --exclude .git . "$1"
}

# add preview
show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else batcat -n --color=always --line-range :500 {}; fi"

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
eval "$(zoxide init bash)"
alias cd="z"

# ---- bat ----
alias bat="batcat"
export BAT_THEME="ansi"

# ---- eza ----
alias ls="eza -a --color=always --icons=always --group-directories-first"

# ---- starship ----
export STARSHIP_CONFIG="$HOME/.config/starship.toml"
eval "$(starship init bash)"

# ===================================================
# Aliases
# ===================================================

# ---- general ----
alias python='python3'
alias pip='pip3'
alias rf='source ~/.bashrc'

# ---- git ----
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'

# ===================================================
# Environment Variables
# ===================================================

export GITHUB_TOKEN=YOUR_GITHUB_TOKEN_HERE