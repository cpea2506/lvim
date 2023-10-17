local lsp = require "lvim.lsp"

require("lvim.lsp.manager").setup("omnisharp", {
    handlers = {
        ["textDocument/definition"] = require("omnisharp_extended").handler,
    },
    capabilities = vim.tbl_deep_extend("force", lsp.common_capabilities(), {
        workspace = {
            didChangeWatchedFiles = {
                dynamicRegistration = true,
            },
        },
    }),
})

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "csharpier",
        filetypes = { "cs" },
    },
}
