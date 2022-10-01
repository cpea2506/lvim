local keys = {
    normal_mode = {
        -- leap
        ["f"] = "<Plug>(leap-forward)",
        ["F"] = "<Plug>(leap-backward)",

        -- other
        ["<C-e>"] = "<cmd>BufferKill<cr>",
        ["<C-s>"] = "<cmd>w<cr>",
    },
    o = {
        ["f"] = "<Plug>(leap-forward-x)",
        ["F"] = "<Plug>(leap-backward-x)",
    },
}

return keys
