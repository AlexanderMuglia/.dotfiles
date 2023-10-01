#!/usr/bin/env bash

# zshenv
echo "[+] Setting up zshenv"
cp ../../config/.zshenv ~/
source ~/.zshenv

# FileVault
echo "[+] Enabling FileVault"
sudo fdesetup enable

# Disable desktop icons
echo "[+] Disabling desktop icons"
defaults write com.apple.finder CreateDesktop false
killall Finder

# Homebrew
echo "[+] Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "[+] Updating Homebrew"
brew update
brew upgrade

echo "[+] Installing shell utilities"
brew install ack
brew install htop
brew install ctags
brew install cscope
brew install the_silver_searcher
brew install wget
brew install tree

echo "[+] Installing compression utilities"
brew install xz
brew install p7zip

echo "[+] Installing networking utilities"
brew install aircrack-ng
#brew install dns2tcp
#brew install foremost
#brew install knock
#brew install netpbm
brew install nmap
brew install socat
#brew install sqlmap
#brew install tcpflow
#brew install tcpreplay
#brew install tcptrace
#brew install ucspi-tcp
brew cask install wireshark

#echo "[+] Installing password utilities"
#brew install cifer
#brew install hashpump
#brew install hydra
#brew install john
#brew install fcrackzip

echo "[+] Installing static analysis utilities"
brew install binutils
#brew install binwalk
#brew install vbindiff
#brew install xpdf
#brew install pngcheck

echo "[+] Installing crypto utilities"
brew install gnupg
brew install ssh-copy-id

echo "[+] Installing development utilities"
brew install vim
brew install tmux
brew install tmuxinator
#brew install gdb
brew install cmake
brew install ninja
brew install llvm
#brew install go
#brew install python2
brew install python3
#brew install bfg
brew install ghidra

#echo "[+] Installing software packages"
brew install --cask iterm2

echo "[+] Installing system packages"
#brew install --cask osxfuse

echo "[+] Installing Android platform tools"
brew install --cask android-platform-tools

echo "[+] Installing iOS tools"
brew install --HEAD usbmuxd
brew install --HEAD libimobiledevice
brew install --HEAD ideviceinstaller
#brew install --HEAD ifuse

echo "[+] Installing embedded tools"
brew install arduino-cli
brew install teensy

echo "[+] Cleaning up Homebrew"
brew cleanup
