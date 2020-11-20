# create directory with all nested dirs
# then cd into it
# e.g. mkcd test/hello/world
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

function newjs() {
  mkcd "$1" && npm init -y && git init && npx gitignore node
}

# shorthand for `tree` with hidden files and color
# ignores .git, node_modules etc
# lists directories first
# long output gets piped into `less` so it's scrollable
function t() {
	tree -aC \
  -I '.git|node_modules|bower_components' -L ${1:-3} \
  --dirsfirst \
  # pass on all arguments after the 1st
  "${@:2}" \
  | less -FRX;
}

# git stuff (mostly used in aliases)

# no gods, no masters
function git_main_branch() {
  if [[ -n "$(git branch --list main)" ]]; then
    echo main
  else
    echo master
  fi
}

function __git_prompt_git() {
  GIT_OPTIONAL_LOCKS=0 command git "$@"
}

# Outputs the name of the current branch
# Usage example: git pull origin $(git_current_branch)
# Using '--quiet' with 'symbolic-ref' will not cause a fatal error (128) if
# it's not a symbolic ref, but in a Git repo.
function git_current_branch() {
  local ref
  ref=$(__git_prompt_git symbolic-ref --quiet HEAD 2> /dev/null)
  local ret=$?
  if [[ $ret != 0 ]]; then
    [[ $ret == 128 ]] && return  # no git repo.
    ref=$(__git_prompt_git rev-parse --short HEAD 2> /dev/null) || return
  fi
  echo ${ref#refs/heads/}
}

function mkpw() {
  export LC_ALL=C ;
  head /dev/urandom | tr -dc '!-~' | head -c ${1:-32} | pbcopy;
  pbpaste;
}