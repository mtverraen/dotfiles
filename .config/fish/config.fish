#!/usr/bin/fish

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias cdp="cd projects"

switch (uname)
  case Darwin
    alias ls="ls -lG"
  case '*'
    alias ls="ls -l --group-directories-first --color=always"
end

alias l="ls -lF"
alias la="ls -lAF"

#Shortcuts
alias mv="mv -v"
alias cp="cp -v"
alias rm="rm -v"
alias ssh="ssh -v"
alias cal="cal -m"
#alias cat="bat"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Merge PDF files, preserving hyperlinks
# Usage: `mergepdf input{1,2,3}.pdf`
alias mergepdf='gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=_merged.pdf'

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"



# Docker
alias d="docker"
alias dc="docker-compose"
alias dm="docker-machine"
alias ds="docker-swarm"
alias dsh="docker run -it --rm --entrypoint /bin/sh -v (pwd):/root/src -w /root/src"
alias dbash="docker run -it --rm --entrypoint /bin/bash -v (pwd):/root/src -w /root/src"

# Docker Compose Run
alias dr="docker-compose run --rm"

# Docker Hygiene
alias dclean="docker rm (docker ps -aqf status=exited)"
alias dcrmf="docker-compose stop -t 0; docker-compose rm -f"

# NPM / Node
#alias yarn="docker-compose run --rm node yarn"
#alias npm="docker-compose run --rm node npm"
#alias node="docker-compose run --rm node node"

# Kubernetes
alias k="kubectl"
alias kpo="kubectl get pods"
alias kpow="kubectl get pods -w"
alias ksvc="kubectl get services"
alias king="kubectl get ingress"

# Developer Tools
alias tf="terraform"
alias tf12="terraform12"
alias shellcheck="docker run --rm -it -v (pwd):/mnt nlknguyen/alpine-shellcheck"

# Applications
alias az="docker run -it --rm -v $HOME:/root azuresdk/azure-cli-python:latest az"
alias azsh="docker run -it --rm -v $HOME:/root azuresdk/azure-cli-python:latest /bin/bash"
alias gcloud="docker run -it --rm -v $HOME:/root google/cloud-sdk glcoud"

set -g fish_user_paths "/usr/local/opt/icu4c/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/icu4c/sbin" $fish_user_paths
set -U fish_user_paths "/usr/local/bin/yarn" $fish_user_paths