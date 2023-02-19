local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "prettier",
        filetypes = { "typescript" },
    },
    {
        command = "prettierd",
        filetypes = { "typescript" },
    },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
    {
        command = "eslint",
        filetypes = { "typescript" },
    },
    {
        command = "eslint_d",
        filetypes = { "typescript" },
    },
}
