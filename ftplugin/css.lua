local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        exe = "prettier",
        filetypes = { "css" },
    },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
    {
        exe = "stylelint",
        filetypes = { "css" },
    },
}
