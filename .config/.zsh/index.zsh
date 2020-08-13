# nice prompt with git stuff
# https://github.com/sindresorhus/pure
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# load my custom stuff
source ~/.config/.zsh/options.zsh
source ~/.config/.zsh/plugins.zsh
source ~/.config/.zsh/functions.zsh
source ~/.config/.zsh/aliases.zsh
