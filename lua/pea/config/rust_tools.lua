local M = {}

M.config = function()
    local status_ok, rust_tools = pcall(require, "rust-tools")

    if not status_ok then
        return
    end

    local lsp = require "lvim.lsp"
    local executors = require "rust-tools.executors"

    rust_tools.setup {
        tools = {
            executor = executors.toggleterm,
            inlay_hints = {
                show_variable_name = true,
            },
            hover_actions = {
                border = "rounded",
                auto_focus = true,
            },
        },
        server = {
            on_attach = lsp.common_on_attach,
            on_init = lsp.common_on_init,
            capabilities = lsp.common_capabilities(),
            settings = {
                ["rust-analyzer"] = {
                    diagnostics = {
                        enable = true,
                    },
                    checkOnSave = {
                        enable = true,
                        command = "clippy",
                    },
                },
            },
            standalone = false,
        },
    }
end

return M
