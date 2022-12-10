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
end

return M
