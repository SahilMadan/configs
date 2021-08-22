# # Set up the prompt

autoload -Uz promptinit
promptinit
prompt suse

setopt histignorealldups sharehistory inc_append_history

# # Use Vim keybindings 
bindkey -v

# # Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Path
export PATH=$PATH:~/.local/bin/

# Default editor
export EDITOR=~/.local/bin/nvim

# Set library path to include /usr/local/lib for shared libraries
export LD_LIBRARY_PATH=/usr/local/lib

# Keep 10000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history

setopt auto_list # automatically list choices on ambiguous completion
setopt auto_menu # automatically use menu completion
setopt auto_cd
setopt correct
setopt correct_all

# Edit zshrc
edz(){
    nvim ~/.zshrc
    source ~/.zshrc
    echo "New .zshrc sourced."
}

# Edit nvim config
edn() {
  pushd ~/.config/nvim/
  nvim ./init.lua
  popd
  echo "init.lua updated."
}

# Make and change directory
function mkcd() {
  mkdir -p $1
  cd $1
}

# Copy to clipboard using kitty terminal + clipboard kitten
alias cpboard='kitty +kitten clipboard'
