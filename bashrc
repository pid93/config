parse_git_branch() {
  git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

alias ll='ls --color=always -aGlFh'
alias la='ls --color=always -GAh'
alias l='ls --color=always -GCFhl'
alias rg='rg --hidden'

function setAliases {
  REPOS=$(ls $1)
  for r in $(echo $REPOS); do
    aliasName=$(echo $r | tr '[:upper:]' '[:lower:]')
    alias cd$aliasName='cd '$1$r
  done
}

setAliases ~/repos/
for r in $(ls ~/repos); do
  setAliases ~/repos/$r/
done

export FZF_DEFAULT_COMMAND='ag --hidden --ignore-dir={.git,angular/dist,node_modules} -g ""'
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
PATH=~/bin:~/.cargo/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

if command -v tmux >/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && tmux new-session -A -s main

  # check if we have been switched to light, else go dark
  [[ ! $(tmux show-environment | grep THEME) =~ 'THEME=light' ]] &&
    tmux set-environment THEME dark
fi
