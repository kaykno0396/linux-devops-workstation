############################################################
# Kay's DevOps Zsh Configuration
############################################################

############################################################
# History
############################################################

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY

############################################################
# Completion
############################################################

autoload -Uz compinit
compinit

setopt AUTO_MENU
setopt COMPLETE_IN_WORD
setopt ALWAYS_TO_END

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

############################################################
# Shell behaviour
############################################################

setopt AUTO_CD
setopt CORRECT
setopt INTERACTIVE_COMMENTS

bindkey -e

############################################################
# Environment
############################################################

export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"
export LESS="-R"

############################################################
# Aliases
############################################################

alias ls='eza'
alias ll='eza -lah --group-directories-first'
alias la='eza -a'
alias lt='eza --tree'
alias cat='bat'
alias grep='grep --color=auto'

alias gs='git status'
alias gd='git diff'
alias gl='git log --oneline --graph --decorate'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gpl='git pull'

############################################################
# Tool integration
############################################################

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

[ -f /usr/share/fzf/shell/key-bindings.zsh ] && \
    source /usr/share/fzf/shell/key-bindings.zsh

[ -f /usr/share/fzf/shell/completion.zsh ] && \
    source /usr/share/fzf/shell/completion.zsh
