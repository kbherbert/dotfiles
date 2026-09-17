# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Development Commands

- **Apply Configurations**: `make dotfiles` or `bash restore.sh` (installs dependencies via Homebrew and uses GNU Stow to symlink configurations).
- **Manage Symlinks**: The project uses `GNU Stow`. To manually stow/unstow a component:
    - Stow: `stow <component>` (e.g., `stow zsh`)
    - Unstow: `stow -D <component>`

## Architecture

This repository manages dotfiles using a directory-per-tool structure, intended to be cloned into `~/.dotfiles` and managed via `GNU Stow`.

### Structure
- `neovim/`: Neovim configuration located at `.config/nvim`.
- `zsh/`: Zsh configuration (`.zshrc`).
- `terminal/`: Terminal configurations (Ghostty at `.config/ghostty`, WezTerm at `.wezterm.lua`).
- `git/`: Git configurations including work and personal profiles.
- `prompt/`: Starship prompt configuration (`starship.toml`).
- `ai/`: Custom Claude Code agent skills and instructions.
- `functions/`: Shell functions.

### Key Tooling
- **GNU Stow**: Used for symlinking the internal directory structure to the user's home directory.
- **Homebrew**: Used in `restore.sh` for dependency management.
- **Starship**: Used for the shell prompt.
