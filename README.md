# nvim config

My personal NeoVim configuration files.

## prerequisites
- nvim 9.0+
- ripgrep
- packer

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
8. `sudo ln -s /bin/nvim-linux64/bin/nvim ./nvim`
9. `nvim ~/.config/nvim`

After this, `nvim` should be open in the config directory. Run these **vim** commands in order: *(ignore runtime errors for now)*

1. `:so lua/kubgus/remap.lua` (do this with all files in `kubgus` **except** `init.lua`)
2. `:so lua/kubgus/init.lua`
3. `:PackerSync`
4. `:so after/plugin/theme.lua` (do this for all files in `plugin`)
