local M = {}

M.config = function()
    local status_ok, rust_tools = pcall(require, "rust-tools")

    if not status_ok then
        return
    end

    rust_tools.setup {
        tools = {
            autoSetHints = true,
            hover_with_actions = true,
            runnables = {
                use_telescope = true,
            },
        },
        server = {
            cmd = { vim.fn.stdpath "data" .. "/lsp_servers/rust/rust-analyzer" },
            on_attach = require("lvim.lsp").common_on_attach,
            on_init = require("lvim.lsp").common_on_init,
        },
    }
end

return M
