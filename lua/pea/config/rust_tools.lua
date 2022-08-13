return function()
    local status_ok, rust_tools = pcall(require, "rust-tools")

    if not status_ok then
        return
    end

    local inlay_hints_ok, inlay_hints = pcall(require, "inlay-hints")

    local lsp = require "lvim.lsp"
    local executors = require "rust-tools.executors"

    rust_tools.setup {
        tools = {
            on_initialized = function(status)
                if inlay_hints_ok and status.health == "ok" then
                    inlay_hints.set_all()
                end
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
            capabilities = lsp.common_capabilities(),
            standalone = false,
        },
    }
end
