# dotfiles
My personal config. I don't keep too many dotfiles around, but I will update this repo with any changes I'd like to keep synced across Linux machines.

## Installation
I use [GNU Stow](https://www.gnu.org/software/stow/) to manage my files. Make sure you install GNU Stow from whatever appropriate package manager.
To install the dotfiles, clone this repo and run the following:

```sh
$ mv dotfiles ~/.dotfiles
$ cd ~/.dotfiles
$ stow .
```

## Shell
I use [Spaceship Prompt](https://spaceship-prompt.sh/) for zsh as my shell. To
install, ensure you first have zsh on your machine. For macOS, I tend to use
homebrew:

```sh
brew install spaceship
```

For Arch Linux, I just use the AUR package:

```sh
yay -S spaceship-prompt-git
```
