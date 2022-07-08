local keys = {
    normal_mode = {
        -- hop
        ["fa"] = ":HopAnywhere<CR>",
        ["fc"] = ":HopChar1<CR>",
        ["fw"] = ":HopWord<CR>",
        ["fl"] = ":HopLine<CR>",
        ["fr"] = ":HopPattern<CR>",

        -- disable default tab switch buffer
        ["<S-l>"] = nil,
        ["<S-h>"] = nil,

        -- other
        ["<C-e>"] = ":bdelete!<CR>",
        ["<C-b>"] = ":NvimTreeToggle<CR>",
        ["<C-s>"] = ":w<CR>",
    },
}

return keys
