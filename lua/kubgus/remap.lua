local function map(mode, lhs, rhs, opts)
	local options = { noremap=true, silent=true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local function cmd(inp)
	local res =  ":" .. inp .. "<CR>"
	return res
end

-- Change leader to space
vim.g.mapleader = " "

------------------------------------------------------
-- NeoVim Shortcuts
------------------------------------------------------

-- Netrw easy access (project-view)
map("n", "<leader>pv", cmd("Ex"))
