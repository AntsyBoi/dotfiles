autoload -Uz compinit
compinit

# Path to oh-my-zsh
# export ZSH=$HOME/.oh-my-zsh
# source $ZSH/oh-my-zsh.sh

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.mybin:$HOME/.local/bin:$HOME/bin:/usr/local/bin:/usr/src/pacstall/distrobox/usr/bin:$PATH

source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
# antigen bundle rust
antigen bundle node
antigen bundle copydir
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle go

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# antigen theme clean
antigen theme agnoster

# User stuff
source ~/.aliases
source ~/.functions

export PATH="$PATH:$HOME/.spicetify"
export PATH=$PATH:/home/box/.spicetify

autoload bashcompinit
bashcompinit
source /usr/share/bash-completion/completions/pacstall

# Tell Antigen that you're done.
antigen apply

# Cow's gonna tell you how to live life
fortune | cowsay | lolcat
