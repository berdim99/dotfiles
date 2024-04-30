# Micha's dot files

## Content
Various dot files for zsh, tmux, nvim and git

## New Mac Setup

* Install apps
	* Bear (App Store)
	* Dropbox
	* Sublime -  [Sublime Text - Text Editing, Done Right](https://www.sublimetext.com/)
	* Alfred
    * Terminal:
      I used to use iTerm2, but now I'm using Kitty
        * [Kitty](https://sw.kovidgoyal.net/kitty/)
          Copy the config from the `kitty` folder into `~/.config/kitty`
        * [iTerm2](https://iterm2.com/downloads.html)
            * Hardcore theme https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Hardcore.itermcolors
            * Size 180x50
            * Font
                * Originally I liked [Fira Code fonts](https://github.com/tonsky/FiraCode)
                * But then I discovered, baught, and now using [Comic Code](https://tosche.net/fonts/comic-code) which is kinda fun.
	* Brew [The Missing Package Manager for macOS (or Linux) — Homebrew](https://brew.sh/)
	* Finder extension - [SourceCodeSyntaxHighlight](https://github.com/sbarex/SourceCodeSyntaxHighlight)
    * "Magical" shell history - [Atuin](https://atuin.sh/)
    * [Asdf](https://asdf-vm.com/guide/getting-started.html)

* Install brew apps I use often:
  * ag: the Silver Searcher. Better & faster than grep
  * bat: a `cat` improvement
  * duf: a `df` improvement
  * fd: a find CLI tool
  * fzf: fuzzy search in shell
  * gh: GitHub CLI
  * neovim: text editor
  * ranger: terminal file browser
  * tig: Git terminal viewer
  * tldr: summarize man pages
  * tmux: terminal multiplexer

```shell
brew install neovim fzf tmux gh tig ranger ag bat fd tldr duf
```

* Install keybinding  [GitHub - junegunn/fzf: A command-line fuzzy finder](https://github.com/junegunn/fzf#using-homebrew)
* Install [VIM plugins](https://github.com/junegunn/vim-plug)
* Install [ohmyzsh](https://ohmyz.sh/#install)
* Install [Powerlevel](https://github.com/romkatv/powerlevel10k#oh-my-zsh) and its fonts
* Install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
* clone this repo [GitHub - berdim99/dotfiles: Micha’s dotfiles](https://github.com/berdim99/dotfiles)
	* copy nvim files to `~/.config/nvim/`
	* run `:PlugInstall` from within nvim
* Copy root files to `~/`
* Double check .gitconfig and .zshrc for errors
* Install Powerline fonts [GitHub - powerline/fonts: Patched fonts for Powerline users.](https://github.com/powerline/fonts/)

## New Ubuntu setup (outdated)
* Install needed software
  ```shell
	sudo apt update
	sudo apt install zsh fzf silversearcher-ag gnome-tweaks fd-find gh bat duf htop
 	```
* Change shell to zsh using `chsh`
* Use 'TWeaks' app to map caps lock -> Esc
* https://ohmyz.sh/#install
* Install https://github.com/romkatv/powerlevel10k#oh-my-zsh and it's fonts
* https://github.com/zsh-users/zsh-autosuggestions
