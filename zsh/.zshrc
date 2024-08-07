# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Define environment variables.
export BAT_THEME="gruvbox-dark"

# Functions.
source ~/.dotfiles/functions/.functions

# Custom aliases
alias c="clear"
alias cat="bat --wrap=never"
alias dc="docker-compose"
alias dps-full="docker ps -a --format \"table {{.ID}}\t{{.Names}}\t{{.State}}\t{{.Status}}\t{{.Size}}\t{{.RunningFor}}"\"
alias dps="docker ps -a --format \"table {{.ID}}\t{{.Names}}\t{{.State}}"\"

# Starship + Warp
if [[ $TERM_PROGRAM = "WarpTerminal" ]]; then
  export STARSHIP_CONFIG=~/.dotfiles/prompt/starship-warp.toml
else
  export STARSHIP_CONFIG=~/.dotfiles/prompt/starship.toml

  # Plugins
  source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Prompt
eval "$(starship init zsh)"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# Yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
