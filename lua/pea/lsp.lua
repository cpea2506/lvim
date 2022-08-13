local lsp = {
    installer = {
        setup = {
            automatic_installation = false,
            ensure_installed = {
                "rust_analyzer",
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
    on_attach_callback = function(client, bufnr)
        pcall(function()
            require("inlay-hints").on_attach(client, bufnr)
        end)
    end,
    diagnostics = {
        virtual_text = false,
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
