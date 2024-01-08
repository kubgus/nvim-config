local function map(mode, lhs, rhs, opts)
	local options = { noremap=true, silent=true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to space
vim.g.mapleader = " "

------------------------------------------------------
-- NeoVim Shortcuts
------------------------------------------------------

-- Netrw easy access (project-overview)
map("n", "<leader>po", ":Ex<CR>")

-- Visual move
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Append line below to current line
map("n", "J", "mzJ`z")

-- Half page jumps keep cursor in middle
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Search terms stay in middle
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Awesomepaste
map("x", "<leader>p", "\"_dP")

-- Yank to system clipboard
map("n", "<leader>y", "\"+y")
map("v", "<leader>y", "\"+y")
map("n", "<leader>Y", "\"+Y")

-- Forbidden remaps
map("n", "<C-c>", "V")
map("v", "<C-c>", "<C-c>a")
map("i", "<C-c>", "<C-c>")
