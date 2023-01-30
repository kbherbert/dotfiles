# Themes.
#ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "half-life" "pmcgee" )

# Case-sensitive completion.
# CASE_SENSITIVE="true"

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Plugins.
plugins=(git copypath copyfile zsh-syntax-highlighting zsh-autosuggestions)

# oh-my-zsh plugin settings.
zstyle :omz:plugins:ssh-agent identities bethel

# Define environment variables.
export BAT_THEME="gruvbox-dark"

# Use environment variables.
source ~/.oh-my-zsh/oh-my-zsh.sh

# Functions.
source ~/.functions

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
fi

eval "$(starship init zsh)"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"