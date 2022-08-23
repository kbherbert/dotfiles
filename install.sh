# install cmd utils
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1

# install other utils via brew
brew install bat
brew install neofetch

# install stow for symlinking
brew install stow

# re-stow stuff
stow git
stow vim
stow zsh