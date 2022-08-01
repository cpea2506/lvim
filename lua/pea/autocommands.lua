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
}

return autocommands
