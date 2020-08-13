export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# use VS Code as default editor for git commit etc
export EDITOR="code -w"

# so we can write ".." instead of "cd .."
setopt AUTO_CD

# initialise nice autocompletion
autoload -U compinit && compinit

# do not autoselect the first completion entry
unsetopt MENU_COMPLETE   
unsetopt FLOW_CONTROL
# show completion menu on successive tab press
setopt AUTO_MENU
setopt COMPLETE_IN_WORD
setopt ALWAYS_TO_END

# use a pretty menu to select options
zstyle ':completion:*:*:*:*:*' menu select