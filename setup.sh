#!/bin/bash

# Automatical install of nvim plugins

sudo apt-get install ripgrep
git clone --depth 1 https://github.com/kubgus/nvim ~/.config/nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
curl -L https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz > nvim-linux64.tar.gz
tar xvzf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz
sudo mv nvim-linux64 /bin
sudo ln -s /bin/nvim-linux64/bin/nvim /bin/nvim
nvim ~/.config/nvim
