export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

export FLYCTL_INSTALL="$HOME/.config/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# use VS Code as default editor for git commit etc
export EDITOR="code -w"

# so we can write ".." instead of "cd .."
setopt AUTO_CD

# make it pretty
source ~/.config/zsh/prompt.zsh

# syntax highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting/
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# autosuggestions (hit right arrow to accept)
# https://github.com/zsh-users/zsh-autosuggestions/
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

source ~/.config/zsh/aliases.zsh

# bun completions
# this stops bun completions installing on upgrade