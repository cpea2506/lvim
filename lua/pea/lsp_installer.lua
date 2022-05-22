local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")

if not status_ok then
    return
end

lvim.lsp.automatic_servers_installation = false

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
