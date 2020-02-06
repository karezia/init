#!/bin/bash
sudo apt update && apt upgrade
curl -o ~/.vimrc https://raw.githubusercontent.com/karezia/init/master/.vimrc
curl -o ~/.bash_profile https://raw.githubusercontent.com/karezia/init/master/.bash_profile
dircolors -p > ~/.colorrc
curl -o ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
if [ $? = 0 ]; then chmod 711 ~/.git-prompt.sh ~/.git-completion.bash; fi
echo "source ~/.git-prompt.sh" >> ~/.bash_profile
echo "source ~/.git-completion.bash" >> ~/.bash_profile
echo PS1="'\[\033[1;32m\]\H:\[\033[1;33m\]\w/\[\033[36m\]\$(__git_ps1)\[\033[0m\]:$ '" >> ~/.bash_profile
source .bash_profile
