require "pea.options"
require "pea.keys"
require "pea.plugins"
require "pea.notify"
require "pea.lsp_installer"
require "pea.icons"
require "pea.dashboard"
require "pea.treesitter"
require "pea.nvimtree"

-- theme
lvim.colorscheme = "one_monokai"
vim.g.one_monokai_transparent = true

lvim.leader = "space"
lvim.format_on_save = true
lvim.lsp.diagnostics.update_in_insert = true
lvim.lsp.float.focusable = true

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

-- bufferline
lvim.builtin.bufferline.options.always_show_bufferline = true
lvim.builtin.bufferline.options.diagnostics = nil
lvim.builtin.bufferline.options.offsets = nil
lvim.builtin.bufferline.options.enforce_regular_tabs = true
lvim.builtin.bufferline.options.show_close_icon = true

-- lualine
lvim.builtin.evil_lualine = { active = true }
if lvim.builtin.evil_lualine.active then
    require("pea.config.evil_lualine").config()
end

-- autocmd
lvim.autocommands.custom_groups = {
    -- hardwrap md file line at width 80.
    { "BufRead,BufNewFile", "*.md", "setlocal textwidth=80" },
    -- On entering insert mode in any file, scroll the window so the cursor line is centered
    { "InsertEnter", "*", ":normal zz" },
    -- switch line number modes between normal and other vim modes
    -- { "BufEnter,FocusGained,InsertLeave,WinEnter", "*", "if &nu && mode() != 'i' | set rnu | endif" },
    -- { "BufLeave,FocusLost,InsertEnter,WinLeave", "*", "if &nu | set nornu | endif" },
}
