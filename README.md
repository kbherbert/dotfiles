# A simple repo for managing my various "`.`" files

```shell
# install Starship
curl -sS https://starship.rs/install.sh | sh

# restore settings
restore.sh | sh

```

## create/restore bat themes

```sh
mkdir -p "$(bat --config-dir)/themes"
cd "$(bat --config-dir)/themes"

# Download theme in '.tmTheme' format, for example:
wget -P "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Latte.tmTheme
wget -P "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Frappe.tmTheme
wget -P "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Macchiato.tmTheme
wget -P "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Mocha.tmTheme

# Update the binary cache
bat cache --build
```

**References**

- [dotfiles.github.io](http://dotfiles.github.io)
- [GNU Stow](https://www.gnu.org/software/stow/)
- [Manage Your Dotfiles Like a Superhero](https://www.jakewiesler.com/blog/managing-dotfiles)
- [Managing dotfiles with GNU Stow](https://venthur.de/2021-12-19-managing-dotfiles-with-stow.html)
