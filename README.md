# Dotfiles for Everything

This is a collection of dotfiles for zsh, neovim, vim (very basic), alacritty, tmux.

## Installation
Install [gun stow](https://www.gnu.org/software/stow/), it's available in the apt and dnf repositories

After installing stow, install the relevant programs, clone this repo, and run `stow .` in the root directory of this project.

This configuration needs the following programs
 - Zsh
 - [Exa](https://the.exa.website/)
 - [Zoxide](https://github.com/ajeetdsouza/zoxide)
 - Alacritty
 - Tmux
 - Neovim

### Zsh
Install zsh with your package manager of choice,
and make it the default shell with
If you're using 
```bash
chsh -s $(which zsh)
```
If you're using fedora, or `chsh` is not available, you can install `util-linux`
```bash
sudo dnf install util-linux
```

### Exa
Exa is an ls replacement and is prettier, and has saner defaults.
No config for this one, just install it with `sudo dnf install exa` or `sudo apt install exa`
The Zsh config replaces `ls` with `exa`

### [Zoxide](https://github.com/ajeetdsouza/zoxide?tab=readme-ov-file#installation)
Zoxide is a better cd, it remembers stuff and all,
install it with `sudo dnf install zoxide` or Don't use the `apt` repo, it's outdated, use the install script 
```bash
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
```

### [Alacritty](https://alacritty.org/)
Alacritty, not giving a description, why am I even writing this?
Install it with by installing rust, by running 
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
and then installing alacritty with 
```bash
cargo install alacritty
```
For a desktop app, you need to add a desktop file in `~/.local/share/applications/`
Create a file called `alacritty.desktop` with the following contents
```
[Desktop Entry]
Type=Application
Exec=alacritty
Name=Alacritty
Comment=A cross-platform, GPU-accelerated terminal emulator
Icon=<Path to icon>
Encoding=UTF-8
Categories=Development
Terminal=false
```


### [Tmux](https://github.com/tmux/tmux)
Tmux, again, why the fuck am I writing this?
Install it with `sudo dnf install tmux` or `sudo apt install tmux`
The rest will be handled by the config

### [Neovim](https://neovim.io/)
Neovim, text editor
Install it with `sudo dnf install neovim` don't use the apt repo, download the latest deb from the 
[neovim website](https://github.com/neovim/neovim/releases/latest), and install it with `sudo dpkg -i neovim.deb`

After install neovim, you need to clone the config repo, which is [here](https://github.com/argha-dot/myVim).
The nvim config is a submodule of this repo, so you need to run `git submodule update --init` in the root of this repo, and it will clone the config repo.
After that, you can run `nvim` to open neovim, and it will install all the plugins.

To update all the submodules, run `git submodule update --remote --merge`
