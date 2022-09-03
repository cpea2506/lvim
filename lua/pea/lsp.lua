local inlayhints_ok, inlayhints = pcall(require, "lsp-inlayhints")

local function show_documentation()
    if vim.fn.expand "%:t" == "Cargo.toml" then
        require("crates").show_popup()
    else
        vim.lsp.buf.hover()
    end
end

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
    buffer_mappings = {
        normal_mode = {
            ["K"] = { show_documentation, "Show hover" },
        },
    },
    on_attach_callback = inlayhints_ok and inlayhints.on_attach,
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
