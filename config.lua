require "pea.utils"

lvim:set {
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

require("one_monokai").setup {
    colors = {
        dark_pink = "#ff008c",
        dark_cyan = "#2b8db3",
    },
    themes = function(colors)
        return {
            LeapMatch = { fg = colors.dark_pink, underline = true },
            LeapLabelPrimary = { fg = colors.dark_pink },
            LeapLabelSecondary = { fg = colors.dark_cyan },
            LeapBackdrop = { fg = colors.gray },
        }
    end,
}
