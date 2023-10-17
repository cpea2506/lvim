local lsp = {
    installer = {
        setup = {
            automatic_installation = false,
            ensure_installed = {
                "clangd",
                "cmake",
                "csharp_ls",
                "jsonls",
                "lua_ls",
                "marksman",
                "yamlls",
            },
        },
    },
    automatic_configuration = {
        skipped_servers = {
            "clangd",
            "csharp_ls",
            unpack(lvim.lsp.automatic_configuration.skipped_servers),
        },
    },
    null_ls = {
        setup = {
            border = "rounded",
        },
    },
    on_attach_callback = function(client, bufnr)
        if vim.tbl_get(client.server_capabilities, "inlayHintProvider") then
            vim.lsp.inlay_hint(bufnr, true)
        end

        -- TODO: remove in the future after null-ls is replaced
        local status_ok, null_ls = pcall(require, "null-ls")

        if status_ok then
            null_ls.enable {}
        end
    end,
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
