# Themes.
ZSH_THEME="spaceship"
ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "half-life" "pmcgee" )

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

# Spaceship variables.
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_CHAR_SYMBOL="🚀"
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_GIT_STATUS_STASHED=""

SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  node          # Node.js section
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

# Custom aliases
alias c="clear"
alias cat="bat"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
