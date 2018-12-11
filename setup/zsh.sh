#! /bin/bash

echo "[+] Installing ZSH"
sudo apt-get update
sudo apt-get install zsh

echo "[+] Installing Oh My ZSH"
sh -c "$ (curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
