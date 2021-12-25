lvim.leader = "space"
lvim.colorscheme = "one_monokai"
lvim.transparent_window = true
vim.g.one_monokai_no_bg = true

require("pea.plugins")
require("pea.keys")
require("pea.dashboard")
require("pea.notify")
require("pea.treesitter")

lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.active = true
lvim.line_wrap_cursor_movement = true
lvim.builtin.nvimtree.setup.view.side = "right"
lvim.builtin.nvimtree.git_hl = 0
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.nvimtree.quit_on_open = 1
lvim.builtin.evil_lualine = { active = true }

if lvim.builtin.evil_lualine.active then
	require("pea.config.evil_lualine").config()
end

-- neovide
vim.g.neovide_cursor_animation_length = 0.12
vim.g.neovide_cursor_vfx_mode = "sonicboom"
vim.g.neovide_transparency = 0.75

-- vim move
vim.g.move_key_modifier = "C"

-- exclude these from numbers
vim.gnumbers_exclude = { "lsp-installer", "toggleterm", "dashboard", "help", "NvimTree", "alpha" }

-- vim visual multi
vim.gVM_mouse_mappings = 1
