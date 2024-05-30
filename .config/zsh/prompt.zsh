autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git*' formats '%F{8}%b%u%c%f'
zstyle ':vcs_info:git*' unstagedstr '*'
zstyle ':vcs_info:git*' stagedstr '+'
zstyle ':vcs_info:*:*' check-for-changes true
# Format when the repo is in an action (merge, rebase, etc)
zstyle ':vcs_info:git*' actionformats '%F{14}⏱ %*%f'

setopt prompt_subst
NL=$'\n'
PROMPT='%F{4}${NL}%~%f ${vcs_info_msg_0_}${NL}❯ '
RPROMPT='%F{8}%*%f'
