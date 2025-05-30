zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Define environment variables.
export BAT_THEME="Catppuccin Frappe"
export STARSHIP_CONFIG=~/.dotfiles/prompt/starship.toml

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Functions.
source ~/.dotfiles/functions/.functions

# Custom aliases
alias ..="cd .."
alias ../..="cd ../.."
alias ../../..="cd ../../.."
alias vim="nvim"
alias c="clear"
alias cat="bat --wrap=never"
alias dps-full="docker ps -a --format \"table {{.ID}}\t{{.Names}}\t{{.State}}\t{{.Status}}\t{{.Size}}\t{{.RunningFor}}"\"
alias dps="docker ps -a --format \"table {{.ID}}\t{{.Names}}\t{{.State}}"\"
alias gst="git status"
alias lsa="ls -lah" # primary files + hidden dir + parent dir
alias la="ls -lAh"  # primary files + hidden dir
alias ll="ls -lh"   # primary files

alias els="eza -G"
alias elsa="eza -l --icons --git -a -a --no-permissions" # primary files + hidden dir + parent dir
alias ela="eza -l --icons --git -a --no-permissions"     # primary files + hidden dir
alias ell="eza -l --icons --git --no-permissions"        # primary files
alias elt="eza --tree --level=2 --long --icons --git --no-permissions"

if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
  # Plugins
  source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

  ZSH_AUTOSUGGEST_STRATEGY=(history completion)
fi

# Prompt
eval "$(starship init zsh)"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# Yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
