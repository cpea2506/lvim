require("lvim.lsp.manager").setup("csharp_ls", {
    handlers = {
        ["textDocument/definition"] = require("csharpls_extended").handler,
    },
})

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "csharpier",
        filetypes = { "cs" },
    },
}
