---@param relative boolean #Whether relativenumber should be set
local function set_relativenumber(relative)
    local in_insert_mode = vim.api.nvim_get_mode().mode == "i"

    if vim.o.number then
        vim.opt.relativenumber = relative and not in_insert_mode
    end
end

local function nvim_tree_open_on_setup(data)
    vim.schedule(function()
        -- buffer is a [No Name]
        local no_name = vim.api.nvim_buf_get_name(data.buf) == "" and vim.bo[data.buf].filetype == ""

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
        { "BufEnter", "FocusGained", "InsertLeave", "WinEnter" },
        {
            desc = "Set relative number when not in insert mode",
            callback = function()
                set_relativenumber(true)
            end,
        },
    },
    {
        { "BufLeave", "FocusLost", "InsertEnter", "WinLeave" },
        {
            desc = "Turn off relative number when in insert mode",
            callback = function()
                set_relativenumber(false)
            end,
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
