local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "rustfmt",
        filetypes = { "rust" },
    },
}
