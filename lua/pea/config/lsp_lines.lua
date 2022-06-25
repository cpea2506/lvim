local M = {}

M.config = function()
    local status_ok, lsp_lines = pcall(require, "lsp_lines")

    if not status_ok then
        return
    end

    -- lsp_lines.register_lsp_virtual_lines()
end

return M
