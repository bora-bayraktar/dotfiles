# Dotfiles

Dotfiles for Zsh, Vim and Tmux.

## Requirements

* A patched font with dev-icons should be installed and used in terminal.
* Vim8 compiled with python or python3.
  
**Note:** If you don't satisfy one of the requirements, check the [Troubleshooting](#troubleshooting) part.

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
   
## Troubleshooting

* You can install one of the [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts), if you have trouble with the font. [Here](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/Regular/complete/JetBrains%20Mono%20Regular%20Nerd%20Font%20Complete%20Mono.ttf) is a suggested one.
  
  <details>
    <summary>Linux</summary>

   1. Choose a font and download the proper file in the ```complete``` folder.
   2. Move the file into the ```~/.local/share/fonts/``` directory. If you don't have ```fonts``` directory, you need to create.
   3. Change the font from your terminal app's preferences menu.
  </details>
  
  <details>
    <summary>macOS</summary>

   1. Choose a font and download the proper file in the ```complete``` folder.
   2. Move the file into the ```~/Library/Fonts/``` directory.
   3. Change the font from your terminal app's preferences menu.
  </details>
* You can check wheter your Vim version supports python, by typing ```vim --version```.
  >If you see ```-python``` and ```-python3``` on the output, you should install Vim compiled with python.

  <details>
    <summary>Linux</summary>

    ```bash
    sudo apt-get update
    sudo apt-get install vim-gtk
    ```
   </details>

   <details>
     <summary>macOS</summary>
     
     ```bash
     brew install vim
     ```
## Keybindings and Tweaks

* ```cs <directory>``` for ```cd <directory>``` then ```ls -a```
* ```ll``` for ```ls -la```
* ```tmux-code``` starts a Tmux session with a Vim and an empty pane
* ```shpr``` to show only the current directory instead of the whole path
* ```ctrl+k``` accepts zsh's auto-suggestion
* ```nn``` next buffer when in Vim
* ```mm``` previous buffer when in Vim
* ```ctrl+u``` for moving right instead of using ```right arrow key``` to get out of brackets or quotation marks in Vim
* ```w``` for ```5e``` in Vim
* ```ctrl+n``` to open and close NERDTree in Vim