require "pea.options"
require "pea.keys"
require "pea.plugins"
require "pea.notify"
require "pea.lsp_installer"
require "pea.icons"
require "pea.dashboard"
require "pea.treesitter"
require "pea.nvimtree"

vim.cmd "syntax on"

lvim.leader = "space"
lvim.transparent_window = false
lvim.lsp.float.focusable = true
lvim.lsp.diagnostics.update_in_insert = true

-- theme
--[[
lvim.colorscheme = "one_monokai"
vim.g.one_monokai_transparent = true
]]

-- neovide
--[[
vim.g.neovide_cursor_animation_length = 0.12
vim.g.neovide_cursor_vfx_mode = "sonicboom"
vim.g.neovide_transparency = 0.75
]]

-- vimr
--[[
if vim.fn.has "gui_vimr" ~= 0 then
    vim.g.one_monokai_no_bg = false
end
]]

lvim.builtin.terminal.active = true
lvim.builtin.bufferline.active = true

-- telescope
lvim.builtin.telescope.defaults.path_display = { "smart" }

-- cmp
lvim.builtin.cmp.confirm_opts.select = true
lvim.builtin.cmp.formatting.source_names["crates"] = "(Crates)"

-- autopairs
lvim.builtin.autopairs.enable_check_bracket_line = true
lvim.builtin.autopairs.map_c_w = true
lvim.builtin.autopairs.fast_wrap.map = "<C-f>"

-- terminal
lvim.builtin.terminal.shade_terminals = false

-- lualine
lvim.builtin.evil_lualine = { active = true }
if lvim.builtin.evil_lualine.active then
    require("pea.config.evil_lualine").config()
end

-- autocmd
lvim.autocommands.custom_groups = {
    -- On entering insert mode in any file, scroll the window so the cursor line is centered
    { "InsertEnter", "*", ":normal zz" },
    -- set relativenumber in no insert mode (only works if leave insert mode by <ESC> or <jk>)
    { "BufEnter,FocusGained,InsertLeave,WinEnter", "*", "if &nu && mode() != 'i' | set rnu | endif" },
    -- set norelativenumber in insert mode
    { "BufLeave,FocusLost,InsertEnter,WinLeave", "*", "if &nu | set nornu | endif" },
}
