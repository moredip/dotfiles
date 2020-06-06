# show/hide OS X desktop
alias hide_desktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias show_desktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Git
alias g="git status"
alias ga="git add"
alias gd="git diff"
alias gdm='git diff $(git merge-base HEAD ${1-master})' # show changes that are on this branch but not on the other branch (defaulting to master)
alias gdc="git diff --cached"
alias gp="git pull --ff-only" 
alias gpr="git pull --rebase" 
alias gc="git commit -v"
alias gs="git stash"
alias gsp="git stash pop"
alias gl="git l --all"
alias gsr="git svn rebase"
alias gitka='gitk --all &'
alias gitxa='gitx --all'

# Docker
alias d='docker'
alias dc='docker-compose' # Yes, this masks the `dc` calculator utility. No, I've never ever used it.

# RVM
alias rvmi='rvm info'
alias ru='rvm use $1'

# Bundle
alias be='bundle exec'

# JVM
alias java8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'

# General
alias q='e'
alias e='exit'
alias c='clear'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ,="cd -"
alias hisg='history | grep $1'
alias psg='ps ax | grep $1'
alias duh='du -h --max-depth 2 $1'
alias fthis='find . -not -type d | xargs grep --color=auto -i'
alias ffile='find . -name'
alias ppxml='pbpaste | xmllint --format - | pbcopy'
alias ppjson='pbpaste | python -mjson.tool | pbcopy'
alias edit='$EDITOR'
