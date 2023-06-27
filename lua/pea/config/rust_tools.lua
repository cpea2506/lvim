return function()
    local lsp = require "lvim.lsp"
    local rust_tools = require "rust-tools"

    rust_tools.setup {
        tools = {
            executor = "toggleterm",
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
            on_init = lsp.common_on_init,
            on_exit = lsp.common_on_exit,
            capabilities = lsp.common_capabilities(),
            standalone = false,
        },
    }

    --FIX: this is required for `rust_analyzer` to auto start
    rust_tools.lsp.setup()
end
