#!/usr/bin/env bash

# Clean up
rm -rf ~/.vim

# Setup vim
echo "[+] Setting up vim"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp -rf ../../config/.vim ~/
cp -rf ../../config/.vimrc ~/
vim -c "PluginInstall" +qall

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