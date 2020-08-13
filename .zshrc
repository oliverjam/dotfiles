# nice prompt with git stuff
# https://github.com/sindresorhus/pure
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# load my custom stuff
source ~/.zsh/options.zsh
source ~/.zsh/plugins.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/aliases.zsh
