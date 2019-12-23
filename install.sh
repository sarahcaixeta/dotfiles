#!/bin/bash
sudo apt-get update
sudo apt upgrade
sudo apt install git
sudo apt-get install x-clip

# oh-my-zsh
sudo apt install zsh
sudo apt-get install powerline fonts-powerline
git clone git@github.com:ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
cp ~/.zshrc ~/.zshrc.orig
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh

# node/nvm
sudo apt install nodejs
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash  

# neovim
sudo apt install neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s $(pwd)/init.vim ~/.config/nvim/init.vim

# z
curl https://raw.githubusercontent.com/rupa/z/master/z.sh -o z.sh
echo ". $(pwd)/z.sh" >> ~/.zshrc

# tmux
sudo apt install tmux
