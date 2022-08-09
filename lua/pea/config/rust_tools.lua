return function()
    local status_ok, rust_tools = pcall(require, "rust-tools")

    if not status_ok then
        return
    end

    local lsp = require "lvim.lsp"
    local executors = require "rust-tools.executors"

    rust_tools.setup {
        tools = {
            on_initialized = function()
                pcall(function()
                    require("inlay-hints").set_all()
                end)
            end,
            inlay_hints = {
                auto = false,
            },
            executor = executors.toggleterm,
            hover_actions = {
                border = "rounded",
                auto_focus = true,
            },
        },
        server = {
            on_attach = lsp.common_on_attach,
            on_init = lsp.common_on_init,
            capabilities = lsp.common_capabilities(),
            standalone = false,
        },
    }
end
