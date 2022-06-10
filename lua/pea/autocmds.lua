local opts = {
    {
        { "BufRead", "BufNewFile" },
        {
            pattern = "*.md",
            desc = "Hardwrap markdown file line at width 80",
            command = "setlocal textwidth=80",
        },
    },
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

return opts
