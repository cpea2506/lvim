require "pea.options"
require "pea.keys"
require "pea.plugins"
require "pea.lsp_installer"
require "pea.icons"
require "pea.dashboard"
require "pea.treesitter"
require "pea.nvimtree"

lvim.leader = "space"
lvim.lsp.document_highlight = false

local status_ok, _ = pcall(require, "one_monokai")
if status_ok then
    lvim.colorscheme = "one_monokai"
    vim.g.one_monokai_no_bg = true
end

-- neovide
vim.g.neovide_cursor_animation_length = 0.12
vim.g.neovide_cursor_vfx_mode = "sonicboom"
vim.g.neovide_transparency = 0.75

lvim.builtin.terminal.active = true
lvim.builtin.bufferline.active = true

-- telescope
lvim.builtin.telescope.defaults.path_display = { "smart" }

-- notify
lvim.builtin.notify.active = true
lvim.builtin.notify.opts.stages = "fade_in_slide_out"

-- cmp
lvim.builtin.cmp.confirm_opts.select = true
lvim.builtin.cmp.formatting.source_names["crates"] = "(Crates)"

-- autopairs
lvim.builtin.autopairs.enable_check_bracket_line = true
lvim.builtin.autopairs.map_c_w = true
lvim.builtin.autopairs.fast_wrap.map = "<C-f>"

-- lualine
lvim.builtin.evil_lualine = { active = true }
if lvim.builtin.evil_lualine.active then
    require("pea.config.evil_lualine").config()
end
