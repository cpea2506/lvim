local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")

lvim.lsp.automatic_servers_installation = false

if status_ok then
    lsp_installer.setup {
        ensure_installed = { "rust_analyzer", "sumneko_lua", "taplo", "tsserver", "cssls", "jsonls" },
        ui = {
            icons = {
                server_installed = "✓",
                server_pending = "➜",
                server_uninstalled = "✗",
            },
            keymaps = {
                toggle_server_expand = "<CR>",
                install_server = "i",
                update_server = "u",
                uninstall_server = "d",
            },
        },
    }
end
