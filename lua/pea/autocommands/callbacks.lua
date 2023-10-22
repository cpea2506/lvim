local M = {}

function M.open_tree_on_setup(args)
    vim.schedule(function()
        local file = args.file
        local buf_name = vim.api.nvim_buf_get_name(0)
        local is_no_name_buffer = buf_name == "" and vim.bo.filetype == "" and vim.bo.buftype == ""
        local is_directory = vim.fn.isdirectory(file) == 1

        if not is_no_name_buffer and not is_directory then
            return
        end

        if is_directory then
            vim.cmd.cd(file)
        end

        require("nvim-tree.api").tree.open()
    end)
end

function M.on_lsp_attach(args)
    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    if not client then
        return
    end

    if client.server_capabilities.inlayHintProvider then
        vim.lsp.inlay_hint(bufnr, true)
    end
end

return M
