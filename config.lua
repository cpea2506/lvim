require "pea.utils"

lvim:extend {
    colorscheme = "one_monokai",
    dev_mode = true,
    transparent_window = true,
    leader = "space",
    format_on_save = true,
    keys = require "pea.keys",
    lsp = require "pea.lsp",
    plugins = require "pea.plugins",
    autocommands = require "pea.autocommands",
    options = require "pea.options",
    builtin = {
        cmp = require "pea.builtin.cmp",
        alpha = require "pea.builtin.alpha",
        mason = require "pea.builtin.mason",
        icons = require "pea.builtin.icons",
        notify = require "pea.builtin.notify",
        lualine = require "pea.builtin.lualine",
        terminal = require "pea.builtin.terminal",
        nvimtree = require "pea.builtin.nvimtree",
        autopairs = require "pea.builtin.autopairs",
        which_key = require "pea.builtin.which_key",
        telescope = require "pea.builtin.telescope",
        treesitter = require "pea.builtin.treesitter",
        bufferline = require "pea.builtin.bufferline",
    },
}

lvim:set_options()
lvim:set_icons()
lvim:toggle_dev_mode()
