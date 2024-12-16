#!/bin/bash

sudo apt update
sudo apt install -y ncdu bash-completion zip sd tldr age
git clone --depth 1 https://github.com/junegunn/fzf.git /home/vagrant/.fzf
yes | /home/vagrant/.fzf/install
