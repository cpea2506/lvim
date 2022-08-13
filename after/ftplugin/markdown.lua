vim.opt_local.textwidth = 80

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "prettier",
        filetypes = { "markdown" },
    },
}
