# for managing config github repo
# https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/.git --work-tree=$HOME'

# going up
alias ...="../.."
alias ....="../../.."
alias .....="../../../.."

# Always use color output for `ls`
alias ls="command ls -G"

alias cat="bat --theme=ansi"

# npm shortcuts
alias nr="npm run"
alias nri="npm install"
alias nrs="npm start"
alias nrt="npm test"
alias nrd="npm run dev"
alias nrb="npm run build"

# git shortcuts
# mostly taken from https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/git/git.plugin.zsh
alias ga='git add'
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gb='git branch'
alias gbd='git branch -d'
# deletes all merged branches, except main/develop
alias gbda='git branch --no-color --merged | command grep -vE "^(\+|\*|\s*main\s*$)" | command xargs -n 1 git branch -d'
alias gc='git commit -v'
alias gcb='git checkout -b'
alias gcm='git checkout main'
alias gco='git checkout'

# single line log, ${author} (yellow, left-padded) | ${date} (related, blue, left-padded) | commit title
alias glog="git log --pretty=format:'%C(yellow)%>(15)%aN%Creset | %C(blue)%>(11)%ar%Creset | %s'"

# open current dir in VS Code
alias c="code ."

# create directory with all nested dirs
# then cd into it
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# clone repo from URL
# then grab the last bit of the URL (the directory)
# and cd into it
function clone() {
  git clone "$1" && cd "$(basename "$1" .git)"
}

function mkpw() {
  export LC_ALL=C ;
  head /dev/urandom | tr -dc '!-~' | head -c ${1:-32} | pbcopy;
  pbpaste;
}

# function installbin() {(
#   set -e
#   NAME="$1"
#   ARCH=${2:-arm64_ventura}
#   BOTTLE_URL="https://formulae.brew.sh/api/formula/$NAME.json"
#   BOTTLE=$(curl --silent "$BOTTLE_URL")
#   BIN_URL=$(echo "$BOTTLE" | jq --raw-output ".bottle.stable.files.$ARCH.url")
#   VERSION=$(echo "$BOTTLE" | jq --raw-output ".versions.stable")
#   curl --silent -L -H "Authorization: Bearer QQ==" -o "$HOME/Downloads/$NAME.tar.gz" "$BIN_URL"
#   tar -xzf "$HOME/Downloads/$NAME.tar.gz" -C "$HOME/Downloads"
#   set -x
#   for FILE in "$HOME"/Downloads/"$NAME"/"$VERSION"/bin/*; do
#     [ -e "$FILE" ] || continue
#     BASENAME="${FILE##*/}"
#     sudo mv "$FILE" "/usr/local/bin/$BASENAME"
#   done
#   rm "$HOME/Downloads/$NAME.tar.gz"
#   rm -rf "$HOME/Downloads/$NAME"
# )}