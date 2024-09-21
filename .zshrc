export LANG=en_US.UTF-8
export LC_COLLATE=C

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.8.1
# Set Directory for zinit

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Soure Zinit, after downloading 
source "${ZINIT_HOME}/zinit.zsh"


# Add Powerlevel 10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Add other zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

# Add snippets
zinit snippet OMZP::sudo

# Load Completions
autoload -U compinit && compinit

zinit cdreplay -q

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Keybinds
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# Save History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion Styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Alias
alias ls='exa --icons'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias cd='z'

alias cls='clear'

. "${HOME}/.cargo/env"

# fnm
FNM_PATH="/home/argha/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/argha/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

export PATH=/home/argha/.local/bin:$PATH
eval "$(fnm env --use-on-cd)"
eval "$(zoxide init zsh)"
alias protontricks='flatpak run com.github.Matoking.protontricks'
export PATH="$HOME/.local/bin/zig-linux-x86_64-0.14.0-dev.1391+e084c46ed:$PATH"
