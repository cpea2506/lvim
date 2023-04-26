local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "prettier",
        filetypes = { "typescriptreact" },
    },
    {
        command = "prettierd",
        filetypes = { "typescriptreact" },
    },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
    {
        command = "eslint",
        filetypes = { "typescriptreact" },
    },
    {
        command = "eslint_d",
        filetypes = { "typescriptreact" },
    },
}
