local keys = {
    normal_mode = {
        -- leap
        ["f"] = "<Plug>(leap-forward)",
        ["<S-f>"] = "<Plug>(leap-backward)",

        -- disable default tab switch buffer
        ["<S-l>"] = false,
        ["<S-h>"] = false,

        -- other
        ["<C-e>"] = ":bdelete!<CR>",
        ["<C-b>"] = ":NvimTreeToggle<CR>",
        ["<C-s>"] = ":w<CR>",
    },
}

return keys
