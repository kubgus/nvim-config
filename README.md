# nvim config

My personal NeoVim configuration files.

## prerequisites
- nvim not installed (installation happens later)
- ripgrep installed
- node.js (& npm) installed

> Don't forget to `sudo apt-get update`

## features
- [x] theme
- [x] treesitter
- [x] telescope
- [ ] undotree
- [ ] lsp

# setup
Run these commands in order in your home directory:
1. `sudo apt-get install ripgrep` (might differ in distros)
2. `git clone --depth 1 https://github.com/kubgus/nvim ~/.config/nvim`
3. `git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim`
4. `curl -L https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz > nvim-linux64.tar.gz`
5. `tar xvzf nvim-linux64.tar.gz`
6. `rm nvim-linux64.tar.gz`
7. `sudo mv nvim-linux64 /bin`
8. `sudo ln -s /bin/nvim-linux64/bin/nvim /bin/nvim`
9. `nvim ~/.config/nvim`

Ignore runtime errors (press Enter multiple times) and follow these instrustions to correctly load the configuration:

1. Navigate to `./lua/kubgus` and open files one by one, running `:so` each time (if you get an error, skip the file and return to it after completing the rest)
2. Run `:PackerSync` anywhere in the environment
3. Navigate to `./after/plugin` and run the `:so` command in the same fashion as the previous step
