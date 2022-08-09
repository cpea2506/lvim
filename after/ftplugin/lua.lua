local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "stylua",
        filetypes = { "lua" },
    },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
    {
        command = "selene",
        filetypes = { "lua" },
    },
}
