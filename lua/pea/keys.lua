local keys = {
    normal_mode = {
        -- leap
        ["f"] = "<Plug>(leap-forward)",
        ["<S-f>"] = "<Plug>(leap-backward)",

        -- other
        ["<C-e>"] = "<cmd>BufferKill<cr>",
        ["<C-s>"] = "<cmd>w<cr>",
    },
    insert_mode = {
        ["jj"] = false,
        ["jk"] = false,
        ["kj"] = false,
    },
}

return keys
