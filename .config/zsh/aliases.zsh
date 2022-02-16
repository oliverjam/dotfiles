# for managing config github repo
# https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/.git --work-tree=$HOME'

# going up
alias ...="../.."
alias ....="../../.."
alias .....="../../../.."

# Always use color output for `ls`
alias ls="command ls -G"

alias cat="bat --theme=Nord"

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

# git shortcuts
# mostly taken from https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/git/git.plugin.zsh

alias ga='git add'
alias gst='git status'

alias gl='git pull'
alias gp='git push'
alias gpf='git push --force-with-lease'

alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
# deletes all merged branches, except main/develop
alias gbda='git branch --no-color --merged | command grep -vE "^(\+|\*|\s*main\s*$)" | command xargs -n 1 git branch -d'

alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gcn!='git commit -v --no-edit --amend'

alias gcb='git checkout -b'
alias gcm='git checkout main'
alias gco='git checkout'

alias gd='git diff'
alias gdc='git diff --cached'
alias gds='git diff --staged'

# single line log, ${author} (yellow, left-padded) | ${date} (related, blue, left-padded) | commit title
alias glog="git log --pretty=format:'%C(yellow)%>(15)%aN%Creset | %C(blue)%>(11)%ar%Creset | %s'"
