local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")

if status_ok then
    lsp_installer.setup {
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
            icons = {
                server_installed = "✓",
                server_pending = "",
                server_uninstalled = "✗",
            },
            keymaps = {
                toggle_server_expand = "o",
                install_server = "i",
                update_server = "u",
                uninstall_server = "d",
            },
        },
    }
end

local opts = {
    automatic_servers_installation = false,
    float = {
        focusable = true,
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

return opts
