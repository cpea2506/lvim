local keys = {
    normal_mode = {
        -- leap
        ["f"] = "<Plug>(leap-forward)",
        ["<S-f>"] = "<Plug>(leap-backward)",

        -- other
        ["<C-e>"] = ":bdelete!<CR>",
        ["<C-s>"] = ":w<CR>",

        -- disable default
        ["<S-l>"] = false,
        ["<S-h>"] = false,
    },
    insert_mode = {
        ["jj"] = false,
        ["jk"] = false,
        ["kj"] = false,
    },
}

return keys
