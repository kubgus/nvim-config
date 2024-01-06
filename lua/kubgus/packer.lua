-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	
	-- Telescope (fuzzy-finder)
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Color theme
	use "bluz71/vim-nightfly-colors"

	-- Treesitter (code highlighter)
	use {
		'nvim-treesitter/nvim-treesitter',
		{ run=':TSUpdate' }
	}
end)
