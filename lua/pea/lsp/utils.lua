local M = {}

function M.show_documentation()
    if vim.fn.expand "%:t" == "Cargo.toml" then
        require("crates").show_popup()
    else
        vim.lsp.buf.hover()
    end
end

function M.on_attach(client, bufnr)
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
        -- fire it first time on load as well
        semantic_tokens_full()

        vim.api.nvim_create_autocmd("TextChanged", {
            group = vim.api.nvim_create_augroup("SemanticTokens", {}),
            buffer = bufnr,
            callback = semantic_tokens_full,
        })
    end
end

return M
