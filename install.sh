
#!/bin/bash

# Start upgrading all
sudo apt update &&
sudo apt upgrade && 
sudo apt clean &&
sudo apt autoclean &&
sudo apt autoremove &&

# create folder
sudo rm -rf ~/temp &&
mkdir ~/temp && 
cd ~/temp &&

# snap
sudo apt install snapd &&
 
# git
sudo apt install git &&

# neovim
sudo apt install neovim &&

# neofetch
sudo apt install neofetch &&

# chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
sudo apt install ./google-chrome-stable_current_amd64.deb &&


# remove firefox
sudo apt purge firefox && 

# compton
sudo apt compton &&

# slack
sudo snap install slack &&

# vscode
sudo apt install software-properties-common apt-transport-https wget &&
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - &&
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" &&
sudo apt install code &&


# Discord
# todo: install by without wget to get latest version
wget https://dl.discordapp.net/apps/linux/0.0.22/discord-0.0.22.deb &&
sudo apt install ./discord-0.0.22.deb &&

# Steam
wget https://repo.steampowered.com/steam/archive/precise/steam_latest.deb &&
sudo apt install ./steam_latest.deb &&

# zsh and oh my zsh
sudo apt install zsh && 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash &&
source ~/.zshrc &&
nvm install 18.12.1 && 
nvm alias default 18.12.1 &&

# yarn and pnpm
npm i -g yarn &&
npm i -g pnpm &&

# nerd fonts
git clone https://github.com/ryanoasis/nerd-fonts.git && 
cd nerd-fonts && 
sudo ./install.sh &&

# powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k &&
# change ZSH_THEME="curobbyrussell" to ZSH_THEME="powerlevel10k/powerlevel10k"

# generate ssh
ssh keygen -C 'grxgabriel@gmail.com' && 
# cat ~/.ssh/id_rsa.pub &&

# remove folder
sudo rm -rf ~/temp