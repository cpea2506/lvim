local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        exe = "prettierd",
        filetypes = { "yml" },
    },
}
