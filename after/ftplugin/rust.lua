local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "rustfmt",
        filetypes = { "rust" },
        args = { "--edition", "2021" },
    },
}
