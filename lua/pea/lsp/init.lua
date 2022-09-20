local utils = require "pea.lsp.utils"

local lsp = {
    installer = {
        setup = {
            automatic_installation = false,
            ensure_installed = {
                "rust_analyzer",
                "marksman",
                "sumneko_lua",
                "taplo",
                "emmet_ls",
                "svelte",
                "tailwindcss",
                "yamlls",
                "bashls",
                "tsserver",
                "cssls",
                "jsonls",
            },
        },
    },
    buffer_mappings = {
        normal_mode = {
            ["K"] = {
                utils.show_documentation,
                "Show hover",
            },
        },
    },
    on_attach_callback = utils.on_attach,
    diagnostics = {
        update_in_insert = true,
        float = {
            focusable = true,
        },
        signs = {
            values = {
                { name = "DiagnosticSignError", text = "" },
                { name = "DiagnosticSignWarn", text = "" },
                { name = "DiagnosticSignHint", text = "" },
                { name = "DiagnosticSignInfo", text = "" },
            },
        },
    },
}

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, lvim.lsp.float)

return lsp
