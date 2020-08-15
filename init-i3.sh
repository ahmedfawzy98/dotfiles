#!/bin/bash
sudo apt install i3blocks git zsh curl vim rbenv feh tmux gpick i3lock-fancy xautolock pavucontrol htop ranger httpie compton xclip playerctl
sudo snap install spotify discord postman vlc
sudo snap install heroku --classic

chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

curl -LO https://github.com/BurntSushi/ripgrep/releases/download/11.0.2/ripgrep_11.0.2_amd64.deb
sudo dpkg -i ripgrep_11.0.2_amd64.deb

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
.fzf/install
source .zshrc

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install nodejs

sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev
curl -sL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash -

rbenv install 2.7.1
sudo gem update --system
gem update
gem install bundler
gem install rails
