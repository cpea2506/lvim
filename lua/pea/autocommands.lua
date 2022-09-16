local function set_relativenumber(relative)
    local in_insert_mode = vim.api.nvim_get_mode().mode == "i"

    if vim.o.nu then
        vim.opt.relativenumber = relative and not in_insert_mode
    end
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
            desc = "Set number when in normal mode",
            callback = function()
                set_relativenumber(false)
            end,
        },
    },
    {
        "BufEnter",
        {
            desc = "Open NvimTree when buffer is empty",
            callback = function()
                local bufname = vim.api.nvim_buf_get_name(0)
                local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
                local buf_has_content = #lines > 1 or (#lines == 1 and lines[1] ~= "")

                vim.schedule(function()
                    local buftype = vim.api.nvim_buf_get_option(0, "filetype")

                    if bufname == "" and buftype == "" and not buf_has_content then
                        pcall(function()
                            vim.api.nvim_command "NvimTreeOpen"
                        end)
                    end
                end)
            end,
        },
    },
}

return autocommands
