return function()
    local lsp = require "lvim.lsp"

    require("roslyn").setup {
        on_attach = lsp.common_on_attach,
        capabilities = vim.tbl_deep_extend("force", lsp.common_capabilities(), {
            workspace = {
                didChangeWatchedFiles = {
                    dynamicRegistration = true,
                },
            },
        }),
    }
end
