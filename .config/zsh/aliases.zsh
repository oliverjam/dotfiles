# for managing config github repo
# https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/.git --work-tree=$HOME'

# going up
alias ...="../.."
alias ....="../../.."
alias .....="../../../.."

# specific project shortcuts
alias jam="cd ~/Code/oliverjames-v3"
alias fac="cd ~/Code/fac"
alias aplisay="cd ~/Code/aplisay/smb-frontend"

# Always use color output for `ls`
alias ls="command ls -G"

# npm shortcuts
alias nr="npm run"
alias nri="npm install"
alias nrs="npm start"
alias nrt="npm test"
alias nrd="npm run dev"
alias nrb="npm run build"

alias cra="npx create-react-app"

alias ghv="gh repo view -w"
alias ghc="gh repo create --public"

# magic-wormhole for sending secure stuff
# https://magic-wormhole.readthedocs.io/
alias whs="wormhole send"
alias wht="wormhole send --text"
alias whr="wormhole receive"

# git shortcuts
# mostly taken from https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/git/git.plugin.zsh

alias ga='git add'
alias gst='git status'

alias gl='git pull'
alias ggpull='git pull origin "$(git_current_branch)"'

alias gp='git push'
alias ggpush='git push origin "$(git_current_branch)"'
alias gpf='ggpush --force-with-lease'
alias gpf!='ggpush --force'

alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
# deletes all merged branches, except main/develop
alias gbda='git branch --no-color --merged | command grep -vE "^(\+|\*|\s*($(git_main_branch)|development|develop|devel|dev)\s*$)" | command xargs -n 1 git branch -d'
alias gbD='git branch -D'
alias gbnm='git branch --no-merged'
alias gbr='git branch --remote'

alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gcn!='git commit -v --no-edit --amend'

alias gcb='git checkout -b'
alias gcm='git checkout $(git_main_branch)'
alias gco='git checkout'

alias gd='git diff'
alias gdc='git diff --cached'
alias gds='git diff --staged'
alias gdt='git diff-tree --no-commit-id --name-only -r'
alias gdw='git diff --word-diff=color'

# single line log, ${author} (yellow, left-padded) | ${date} (related, blue, left-padded) | commit title
alias glog="git log --pretty=format:'%C(yellow)%>(15)%aN%Creset | %C(blue)%>(11)%ar%Creset | %s'"
