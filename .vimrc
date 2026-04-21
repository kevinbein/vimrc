export PATH=~/anaconda3/bin:$PATH
export PATH=/usr/local/Cellar/node/13.1.0/bin:$PATH
export PATH=/Users/lilith/Projekte/flutter/bin:$PATH
export PATH=/Users/av/.nvm/versions/node/v15.14.0/bin:$PATH

export PYTHONPATH="/usr/local/Cellar/jupyterlab/2.2.9_1/libexec/lib/python3.11/site-packages:$PYTHONPATH"
export PYTHONPATH="/usr/local/lib/python3.11/site-packages:$PYTHONPATH"

#export LC_CTYPE=C 
#export LANG=C

# not used and probably not needed but was from my old .bash_profile before the big crash
# turn off special handling of ._* files in tar, etc.
COPYFILE_DISABLE=1; export COPYFILE_DISABLE
# turn off annoying message "You have new mail"
unset MAILCHECK

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export ZSH_DISABLE_COMPFIX="true"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="agnoster"
ZSH_THEME="cloud"
#ZSH_THEME="muse"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  colored-man-pages
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Replace docker with podman
alias docker='podman'
alias docker-compose='podman compose'
# Avoid "Docker is not running" error
SAIL_SKIP_CHECKS=true

alias glog="git log --pretty=format:\"%C(auto,yellow)%h %C(auto,blue)%ad %C(auto,magenta)(%cr)%C(reset) %C(auto,green)%aN %C(auto,reset)%s%C(auto,red)% gD% D\" --graph --date=format:'%Y-%m-%d %H:%M:%S'"
alias gstash="git stash list --pretty=format:\"%C(red)%h%C(reset) %C(green)(%<(13,trunc)%cr) %C(reset) %C(bold blue)<%an>%C(reset) %C(bold magenta)%gd %C(reset)%s\""
alias gbranch="git for-each-ref --sort='-committerdate:iso8601' --format=' %(committerdate:iso8601)%09%(refname)' refs/heads"
alias gra="git config --global alias.pushall '!git remote | xargs -L1 git push --all'"
alias gb="git branch --sort=-committerdate"

alias uni="cd ~/Google\ Drive/Uni\ TUM/"
alias tum="cd ~/Google\ Drive/Uni\ TUM"
alias dieapp="cd ~/Projekte/Web/dieapp"
alias vim2="vim --cmd 'let lightmode=1' "
alias cdd="cd"
alias av="cd /Users/Shared/AV"
alias ba="cd /Users/Shared/AV/ba"
alias track="cd /Users/Shared/AV/track"
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
alias hl="omz_history -E | less -i +G"

# Project specific aliases
alias s="cd /Users/Shared"
alias ebets="cd /Users/Shared/av/ebets/wordpress/wp-content/themes/ebets-shop"
alias ebets2="cd /Users/Shared/av/ebets/wordpress"
alias ebets3="cd /Users/Shared/av/python-scripts/ebets"
alias roche="cd /Users/Shared/AV/roche"
alias biotech="cd /Users/Shared/AV/roche/biotech-docs"
alias foofle="cd /Users/Shared/AV/foofle/"
alias lsar="lsa -latr"

export PKG_CONFIG_PATH=/usr/local/opt/opencv/lib/pkgconfig

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# BEGIN SNIPPET: Platform.sh CLI configuration
HOME=${HOME:-'/Users/av'}
export PATH="$HOME/"'.platformsh/bin':"$PATH"
if [ -f "$HOME/"'.platformsh/shell-config.rc' ]; then . "$HOME/"'.platformsh/shell-config.rc'; fi # END SNIPPET

source /Users/av/.docker/init-zsh.sh || true # Added by Docker Desktop
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/Users/av/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/Users/av/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#
# Automatically set iTerm2 tab color based on current directory
#
# Pastel Blue     ->   #A7C7E7
# Mint Green      ->   #B5EAD7
# Peach           ->   #FFDAB9
# Lavender        ->   #E6E6FA
# Mauve           ->   #D8BFD8
# Pastel Yellow   ->   #FFFACD
# Powder Pink     ->   #FADADD
# Pale Turquoise  ->   #AFEEEE
# Soft Coral      ->   #FFB6B9
# Pastel Green    ->   #77DD77
# Sky Blue        ->   #C0EFFF
# Lilac           ->   #C8A2C8
function iterm_auto_tab_color() {
  local dir="$PWD"
  if [[ "$dir" == /Users/Shared/AV/ecommerce-toolkit* ]]; then
    # Green
    it2setcolor tab 00c800
  elif [[ "$dir" == /Users/Shared/AV/roche/biotech-docs* ]]; then
    # Pastel Blue
    it2setcolor tab A7C7E7 
  elif [[ "$dir" == /Users/Shared/AV/ebets/wordpress* ]]; then
    # Mauve
    it2setcolor tab D8BFD8 
  elif [[ "$dir" == /Users/Shared/AV/ecrm* ]]; then
    # Mauve
    it2setcolor tab 0000CA 
  elif [[ "$dir" == /Users/Shared/AV/foofle* ]]; then
    # Mauve
    it2setcolor tab AFEEEE 
  else
    # Reset to default tab color
    it2setcolor tab default
  fi
}
# Hook into directory changes (Zsh)
autoload -U add-zsh-hook 2>/dev/null
if [[ $? -eq 0 ]]; then
  add-zsh-hook chpwd iterm_auto_tab_color
fi
# Also run once when the shell starts
iterm_auto_tab_color

export DOCKER_HOST=unix://${HOME}/.local/share/containers/podman/machine/podman.sock

source <(fzf --zsh)

. "$HOME/.local/bin/env"
