local M = {}

function M.show_documentation()
    if vim.fn.expand "%:t" == "Cargo.toml" then
        require("crates").show_popup()
    else
        vim.lsp.buf.hover()
    end
end

function M.on_attach(client, bufnr)
    if vim.tbl_get(client.server_capabilities, "inlayHintProvider") then
        vim.lsp.inlay_hint(bufnr, true)
    end
end

return M
