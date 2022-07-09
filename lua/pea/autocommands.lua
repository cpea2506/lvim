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
            desc = "Set relative number when in vim mode that's not insert",
            command = "if &nu && mode() != 'i' | set rnu | endif",
        },
    },
    {
        { "BufLeave", "FocusLost", "InsertEnter", "WinLeave" },
        {
            desc = "Set number when in normal mode",
            command = "if &nu | set nornu | endif",
        },
    },
}

return autocommands
