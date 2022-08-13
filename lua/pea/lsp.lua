local inlay_hints_ok, inlay_hints = pcall(require, "inlay-hints")

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
    on_attach_callback = inlay_hints_ok and inlay_hints.on_attach,
    diagnostics = {
        virtual_text = false,
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

return lsp
