local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        exe = "prettier",
        filetypes = { "scss" },
    },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
    {
        exe = "stylelint",
        filetypes = { "scss" },
    },
}
