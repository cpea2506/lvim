require "pea.options"
require "pea.icons"

-- vim.env.LVIM_DEV_MODE = true

function lvim:extend(opts)
    lvim = vim.tbl_deep_extend("force", self, opts)
end

lvim:extend {
    colorscheme = "one_monokai",
    transparent_window = true,
    leader = "space",
    format_on_save = true,
    keys = require "pea.keys",
    lsp = require "pea.lsp",
    plugins = require "pea.plugins",
    autocommands = require "pea.autocommands",
    builtin = {
        cmp = require "pea.builtin.cmp",
        alpha = require "pea.builtin.alpha",
        notify = require "pea.builtin.notify",
        lualine = require "pea.builtin.lualine",
        terminal = require "pea.builtin.terminal",
        nvimtree = require "pea.builtin.nvimtree",
        autopairs = require "pea.builtin.autopairs",
        telescope = require "pea.builtin.telescope",
        treesitter = require "pea.builtin.treesitter",
        bufferline = require "pea.builtin.bufferline",
    },
}
