-- add your own keymapping
-- keymappings [view all the defaults by pressing <leader>Lk]
-- edit a default keymapping
lvim.keys = {
	normal_mode = {
		["<Tab>"] = ":BufferNext<CR>",
		["<S-Tab>"] = ":BufferPrevious<CR>",
		["<C-e>"] = ":BufferClose<CR>",
		["<C-b>"] = ":NvimTreeToggle<CR>",
		["<C-p>"] = ":Telescope find_files<CR>",
		["<leader>ft"] = ":lua vim.notify(vim.bo.filetype)<CR>",
		["<leader>fo"] = ":lua vim.lsp.buf.formatting_sync()<CR>",
		["<C-s>"] = ":w<CR>",
		["<C-q>"] = ":q<CR>",
	},
}

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
local _, actions = pcall(require, "telescope.actions")

lvim.builtin.telescope.defaults.mappings = { -- for input mode
	i = {
		["<C-j>"] = actions.move_selection_next,
		["<C-k>"] = actions.move_selection_previous,
		["<C-n>"] = actions.cycle_history_next,
		["<C-p>"] = actions.cycle_history_prev,
	},
	n = {
		["<C-j>"] = actions.move_selection_next,
		["<C-k>"] = actions.move_selection_previous,
	},
}
