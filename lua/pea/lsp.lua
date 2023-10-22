local lsp = {
    installer = {
        setup = {
            automatic_installation = false,
            ensure_installed = {
                "bashls",
                "clangd",
                "cmake",
                "jsonls",
                "lua_ls",
                "marksman",
                "rust_analyzer",
                "taplo",
                "yamlls",
            },
        },
    },
    automatic_configuration = {
        skipped_servers = {
            "clangd",
            "rust_analyzer",
            unpack(lvim.lsp.automatic_configuration.skipped_servers),
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
    null_ls = {
        setup = {
            border = "rounded",
        },
    },
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
