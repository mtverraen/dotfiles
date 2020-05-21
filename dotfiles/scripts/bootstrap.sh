#!/usd/bin/env bash 

#Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

#Install brew formulae and casks
cat ./brew.sh ./.cask >> hb.sh
chmod +x hb.sh
./hb.sh

#Install docker desktop for mac
curl https://download.docker.com/mac/stable/Docker.dmg > Docker.dmg

#curl dotfiles-repo and do everything

#Install omf
#curl -L https://get.oh-my.fish | fish
