local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "black",
        filetypes = { "python" },
    },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
    {
        command = "flake8",
        filetypes = { "python" },
    },
}
