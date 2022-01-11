# create directory with all nested dirs
# then cd into it
# e.g. mkcd test/hello/world
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# clone repo from URL
# then grab the last bit of the URL (the directory)
# and cd into it
function clone() {
  git clone "$1" && cd "$(basename "$1" .git)"
}

function newjs() {
  mkcd "$1" && npm init -y && git init && npx gitignore node
}

function mkpw() {
  export LC_ALL=C ;
  head /dev/urandom | tr -dc '!-~' | head -c ${1:-32} | pbcopy;
  pbpaste;
}