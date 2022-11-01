local M = {}

function M.show_documentation()
    if vim.fn.expand "%:t" == "Cargo.toml" then
        require("crates").show_popup()
    else
        vim.lsp.buf.hover()
    end
end

function M.on_attach(client, bufnr)
    require("lsp-inlayhints").on_attach(client, bufnr)

    local caps = client.server_capabilities

    if caps.semanticTokensProvider and caps.semanticTokensProvider.full then
        local semantic_tokens_full = vim.lsp.buf.semantic_tokens_full
        local augroup = vim.api.nvim_create_augroup("SemanticTokens", {})

        vim.api.nvim_create_autocmd("TextChanged", {
            group = augroup,
            buffer = bufnr,
            callback = function()
                semantic_tokens_full()
            end,
        })

        -- fire it first time on load as well
        semantic_tokens_full()
    end
end

return M
