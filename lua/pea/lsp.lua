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
                function()
                    if vim.fn.expand "%:t" == "Cargo.toml" then
                        require("crates").show_popup()
                    else
                        vim.lsp.buf.hover()
                    end
                end,
                "Show hover",
            },
        },
    },
    on_attach_callback = function(client, bufnr)
        local inlayhints_ok, inlayhints = pcall(require, "lsp-inlayhints")
        if inlayhints_ok then
            inlayhints.on_attach(client, bufnr)
        end

        local navic_ok, navic = pcall(require, "nvim-navic")
        if navic_ok and client.server_capabilities.documentSymbolProvider then
            navic.attach(client, bufnr)
        end

        local caps = client.server_capabilities
        local semantic_tokens_full = vim.lsp.buf.semantic_tokens_full
        if caps.semanticTokensProvider and caps.semanticTokensProvider.full and semantic_tokens_full then
            semantic_tokens_full()

            vim.api.nvim_create_autocmd("TextChanged", {
                group = vim.api.nvim_create_augroup("SemanticTokens", {}),
                buffer = bufnr,
                callback = semantic_tokens_full,
            })
        end
    end,
    diagnostics = {
        virtual_text = true,
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
