local utils = require "pea.lsp.utils"

local lsp = {
    installer = {
        setup = {
            automatic_installation = false,
            ensure_installed = {
                "bashls",
                "clangd",
                "cmake",
                "csharp_ls",
                "jsonls",
                "lua_ls",
                "marksman",
                "rust_analyzer",
                "svelte",
                "tailwindcss",
                "taplo",
                "tsserver",
                "yamlls",
            },
        },
    },
    automatic_configuration = {
        skipped_servers = {
            "clangd",
            unpack(lvim.lsp.automatic_configuration.skipped_servers),
        },
        skipped_filetypes = { "cs", "cpp" },
    },
    buffer_mappings = {
        normal_mode = {
            ["K"] = {
                utils.show_documentation,
                "Show hover",
            },
        },
    },
    null_ls = {
        setup = {
            border = "rounded",
        },
    },
    on_attach_callback = utils.on_attach,
}

vim.diagnostic.config {
    update_in_insert = true,
    signs = {
        values = {
            { name = "DiagnosticSignError", text = "" },
            { name = "DiagnosticSignWarn", text = "" },
            { name = "DiagnosticSignHint", text = "" },
            { name = "DiagnosticSignInfo", text = "" },
        },
    },
}

return lsp
