require "pea.utils"

lvim:set {
    dev_mode = true,
    leader = "space",
    format_on_save = true,
    lsp = reload "pea.lsp",
    keys = reload "pea.keys",
    transparent_window = true,
    icons = reload "pea.icons",
    colorscheme = "one_monokai",
    plugins = reload "pea.plugins",
    options = reload "pea.options",
    autocommands = reload "pea.autocommands",
    builtin = {
        cmp = reload "pea.builtin.cmp",
        dap = reload "pea.builtin.dap",
        lir = reload "pea.builtin.lir",
        alpha = reload "pea.builtin.alpha",
        mason = reload "pea.builtin.mason",
        notify = reload "pea.builtin.notify",
        lualine = reload "pea.builtin.lualine",
        terminal = reload "pea.builtin.terminal",
        nvimtree = reload "pea.builtin.nvimtree",
        autopairs = reload "pea.builtin.autopairs",
        which_key = reload "pea.builtin.which_key",
        telescope = reload "pea.builtin.telescope",
        treesitter = reload "pea.builtin.treesitter",
        illuminate = reload "pea.builtin.illuminate",
        bufferline = reload "pea.builtin.bufferline",
        indentlines = reload "pea.builtin.indentlines",
        breadcrumbs = reload "pea.builtin.breadcrumbs",
    },
}
