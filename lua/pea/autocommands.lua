---@param relative boolean #Whether relativenumber should be set
local function set_relativenumber(relative)
    local in_insert_mode = vim.api.nvim_get_mode().mode == "i"

    if vim.o.number then
        vim.opt.relativenumber = relative and not in_insert_mode
    end
end

local function open_nvim_tree_on_empty_buffer()
    vim.schedule(function()
        local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
        local buf_has_content = #lines > 1 or (#lines == 1 and lines[1] ~= "")
        local bufname = vim.api.nvim_buf_get_name(0)
        local ft = vim.bo.filetype

        if bufname == "" and ft == "" and not buf_has_content then
            pcall(vim.cmd, "NvimTreeOpen")
        end
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
            desc = "Open NvimTree when buffer is empty",
            callback = open_nvim_tree_on_empty_buffer,
        },
    },
}

return autocommands
