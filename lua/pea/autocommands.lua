local function nvim_tree_open_on_setup(data)
    vim.schedule(function()
        -- buffer is a [No Name]
        local no_name = vim.api.nvim_buf_get_name(0) == "" and vim.bo.filetype == "" and vim.bo.buftype == ""

        -- buffer is a directory
        local directory = vim.fn.isdirectory(data.file) == 1

        if not no_name and not directory then
            return
        end

        -- change to the directory
        if directory then
            vim.cmd.cd(data.file)
        end

        pcall(function()
            require("nvim-tree.api").tree.open()
        end)
    end)
end

local autocommands = {
    {
        "InsertEnter",
        {
            desc = "Centered window when access insert mode",
            command = "normal zz",
        },
    },
    {
        "BufEnter",
        {
            desc = "Open NvimTree on setup",
            callback = nvim_tree_open_on_setup,
        },
    },
}

return autocommands
