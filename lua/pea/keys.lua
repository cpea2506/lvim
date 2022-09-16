local keys = {
    normal_mode = {
        -- leap
        ["f"] = "<Plug>(leap-forward)",
        ["<S-f>"] = "<Plug>(leap-backward)",

        -- other
        ["<C-e>"] = "<cmd>BufferKill<cr>",
        ["<C-s>"] = "<cmd>w<cr>",
    },
}

return keys
