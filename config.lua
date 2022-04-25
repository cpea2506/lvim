require "pea.options"
require "pea.keys"
require "pea.plugins"
require "pea.lsp_installer"
require "pea.icons"
require "pea.dashboard"
require "pea.treesitter"
require "pea.nvimtree"
require "pea.lualine"
require "pea.popup"

lvim.colorscheme = "one_monokai"
lvim.transparent_window = true
lvim.leader = "space"
lvim.format_on_save = true

-- lsp
lvim.lsp.float.focusable = true
lvim.lsp.diagnostics.update_in_insert = true
lvim.lsp.diagnostics.signs.values = {
    { name = "DiagnosticSignError", text = "" },
    { name = "DiagnosticSignWarn", text = "" },
    { name = "DiagnosticSignHint", text = "" },
    { name = "DiagnosticSignInfo", text = "" },
}

-- cmp
lvim.builtin.cmp.confirm_opts.select = true
lvim.builtin.cmp.formatting.source_names["crates"] = "(Crates)"

-- autopairs
lvim.builtin.autopairs.enable_check_bracket_line = true
lvim.builtin.autopairs.map_c_w = true
lvim.builtin.autopairs.fast_wrap.map = "<C-f>"

-- terminal
lvim.builtin.terminal.active = true
lvim.builtin.terminal.shade_terminals = false

-- bufferline
lvim.builtin.bufferline.active = true
lvim.builtin.bufferline.options.always_show_bufferline = true
lvim.builtin.bufferline.options.diagnostics = nil
lvim.builtin.bufferline.options.offsets = nil
lvim.builtin.bufferline.options.show_close_icon = true

-- notify
lvim.builtin.notify.active = true
lvim.builtin.notify.opts.stages = "fade_in_slide_out"
lvim.builtin.notify.opts.timeout = 1000
lvim.builtin.notify.opts.background_colour = "#282c34"

-- autocmd
lvim.autocommands.custom_groups = {
    -- hardwrap md file line at width 80.
    { "BufRead,BufNewFile", "*.md", "setlocal textwidth=80" },
    -- On entering insert mode in any file, scroll the window so the cursor line is centered
    { "InsertEnter", "*", ":normal zz" },
    -- switch line number modes between normal and other vim modes
    { "BufEnter,FocusGained,InsertLeave,WinEnter", "*", "if &nu && mode() != 'i' | set rnu | endif" },
    { "BufLeave,FocusLost,InsertEnter,WinLeave", "*", "if &nu | set nornu | endif" },
}
