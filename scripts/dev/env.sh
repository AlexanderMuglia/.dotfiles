#!/usr/bin/env bash

# Clean up
rm -rf ~/.vim

# install nvm
echo "[+] Installing nvm and node (needed for CoC)"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
nvm install 22
node -v # should print `v22.2.0`
npm -v # should print `10.7.0`

# Setup vim
echo "[+] Setting up vim"
# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# vundle, removed in favor of vim-plug
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp -rf ../../config/.vim ~/
cp -rf ../../config/.vimrc ~/
vim -c "PlugInstall" +qall

# Setup tmux
echo "[+] Setting up tmux"
cp -rf ../../config/.tmux.conf ~/

# Setup tmuxinator
echo "[+] Setting up tmuxinator"
cp -rf ../../config/.tmuxinator ~/

# Setup gdb
echo "[+] Setting up gdb"
cp -rf ../../config/.gdbinit ~/
cp -rf ../../config/.gdbinit.d ~/

# Setup kitty
echo "[+] Setting up kitty"
mkdir -p ~/.config/kitty/
cp -rf ../../config/kitty.conf ~/.config/kitty/kitty.conf

# Setup neofetch
cp -rf ../../config/neofetchconfig.conf ~/.config/neofetch/config.conf

# Setup i3
echo "[+] Setting up i3"
mkdir -p ~/.config/i3/
cp -rf ../../config/i3config ~/.config/i3/config
mkdir -p ~/.config/i3blocks/
git clone https://github.com/vivien/i3blocks-contrib.git
mv i3blocks-contrib/ ~/.config/i3blocks/scripts/
cp -rf ../../config/i3blocksconfig ~/.config/i3blocks/config

# Get Font
echo "[+] Setting up Fonts"
rm -rf ~/.fonts/
mkdir ~/.fonts/
curl -o YSF.zip  "https://github.com/supermarin/YosemiteSanFranciscoFont/archive/master.zip" -fSL
unzip YSF.zip
mv ./*/*.ttf ~/.fonts/
rm -rf ./Y*

vim -c ":CocInstall coc-json coc-tsserver" +qall
