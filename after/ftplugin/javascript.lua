local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "prettier",
        filetypes = { "javascript" },
    },
    {
        command = "prettierd",
        filetypes = { "javascript" },
    },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
    {
        command = "eslint",
        filetypes = { "javascript" },
    },
    {
        command = "eslint_d",
        filetypes = { "javascript" },
    },
}
