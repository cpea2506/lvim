return function()
    local lsp = require "lvim.lsp"

    require("rust-tools").setup {
        tools = {
            inlay_hints = {
                auto = false,
            },
            hover_actions = {
                border = "rounded",
                auto_focus = true,
            },
        },
        server = {
            on_attach = lsp.common_on_attach,
            capabilities = lsp.common_capabilities(),
            standalone = false,
        },
    }
end
