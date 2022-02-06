local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        exe = "prettier",
        filetypes = { "typescriptreact" },
        args = { "--no-semi" },
    },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
    {
        exe = "eslint_d",
        filetypes = { "typescriptreact" },
    },
}
