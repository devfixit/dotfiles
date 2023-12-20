# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

source ~/.profile
# pnpm
export PNPM_HOME="/home/thomas/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

alias f="fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs nvim"
alias home="cd ~"
alias n="nvim ."
alias la="ls -a"
alias nconf="nvim ~/.config/nvim"
alias zconf="nvim ~/.zshrc"
alias pconf="nvim ~/.profile"
alias xconf="nvim ~/.Xresources"
alias i3conf="nvim ~/.i3/config"
alias ga="git add ."
alias gs="git status"
alias gp="git push"
alias gd="git diff"
alias gc="git checkout"
alias gba="git branch -a"
alias ll="ls -a"


# bun completions
[ -s "/home/trillions/.bun/_bun" ] && source "/home/trillions/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
