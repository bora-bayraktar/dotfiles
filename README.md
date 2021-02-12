# Dotfiles

Dotfiles for Zsh, Vim and Tmux.

## Requirements

* A patched font with dev-icons should be downloaded and used in terminal.

## Installation

1. Download the repository somewhere:
   
   ```bash
   git clone --recurse-submodules https://github.com/bora-bayraktar/dotfiles.git
   ```
2. Get into the repository:
   
   ```bash
   cd dotfiles
   ```
3. Execute the [install.sh](https://github.com/bora-bayraktar/dotfiles/blob/master/install.sh) file (you may need to make it executable):
   
   ```bash
   chmod +x install.sh
   ./install.sh
   ```
4. Close and reopen the terminal. Now you can remove this repository. Dotfiles were installed into ```~/.dotfiles``` and symlinked into home directory.

**Warning:** Do not remove the ```~/.dot_backup``` directory. Your former dotfiles are stored in this directory. It will be used, while setting your older setup, if you uninstall dotfiles. 

## Uninstallation

1. Execute the [uninstall.sh](https://github.com/bora-bayraktar/dotfiles/blob/master/uninstall.sh) file in the ```~/.dotfiles``` directory (you may need to make it executable):
   
   ```bash
   cd ~/.dotfiles
   chmod +x uninstall.sh
   ./uninstall.sh
   ```

2. Close and reopen the terminal.
