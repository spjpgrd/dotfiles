# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Make powerlevel10k the default theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Activate profiles1
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/.zprofile
source ~/.zshrc


# Activate iTerm scripting
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Automatically list directory contents on `cd`
auto_ls () {
	emulate -L zsh;
  ls -AG
}

if [[ ${chpwd_functions[(I)auto-ls]} -eq 0 ]]; then
  chpwd_functions+=(auto_ls)
fi

# History
SAVEHIST=100000
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1
setopt inc_append_history
setopt share_history

# Misc
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
