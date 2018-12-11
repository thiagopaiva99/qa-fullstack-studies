#! /bin/bash

echo "[+] Installing dependencies for Ruby"
sudo apt-get update
sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev

echo "[+] Installing Rbenv"
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
source ~/.zshrc
type rbenv

echo "[+] Installing Ruby Build"
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

echo "[+] Installing Ruby"
rbenv install -l
rbenv install 2.4.1
rbenv global 2.4.1
ruby -v

echo "[+] Installing the Bundler"
gem install bundler

