local lsp = {
    automatic_servers_installation = false,
    installer = {
        setup = {
            ensure_installed = {
                "rust_analyzer",
                "sumneko_lua",
                "taplo",
                "tsserver",
                "cssls",
                "jsonls",
            },
            ui = {
                border = "rounded",
                keymaps = {
                    toggle_server_expand = "o",
                    uninstall_server = "d",
                },
            },
        },
    },
    buffer_mappings = {
        normal_mode = {
            ["gm"] = { ":TSHighlightCapturesUnderCursor<CR>", "See highlight group" },
        },
    },
    diagnostics = {
        virtual_text = true,
        float = {
            focusable = true,
        },
        update_in_insert = true,
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

return lsp
