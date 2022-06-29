local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "shfmt",
        filetypes = { "sh" },
    },
}
