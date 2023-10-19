local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "csharpier",
        filetypes = { "cs" },
    },
}
