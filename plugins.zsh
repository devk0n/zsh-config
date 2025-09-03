# ~/.config/zsh/plugins.zsh

# Only load in interactive shells
[[ $- != *i* ]] && return

### 1. Enable Zsh completion system ###
autoload -Uz compinit
compinit

### 2. Load Zinit if available ###
if [[ -f "$HOME/.local/share/zinit/zinit.git/zinit.zsh" ]]; then
  source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
  autoload -Uz _zinit
  (( ${+_comps} )) && _comps[zinit]=_zinit

  # Plugins
  zinit light zsh-users/zsh-syntax-highlighting
else
  echo "⚠️ Zinit is not installed properly."
fi
