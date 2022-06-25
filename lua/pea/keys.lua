local keys = {
    normal_mode = {
        ["fa"] = ":HopAnywhere<CR>",
        ["fc"] = ":HopChar1<CR>",
        ["fw"] = ":HopWord<CR>",
        ["fl"] = ":HopLine<CR>",
        ["fr"] = ":HopPattern<CR>",

        -- move current line / block
        ["<A-j>"] = ":m .+1<CR>==",
        ["<A-k>"] = ":m .-2<CR>==",

        -- disable default tab switch buffer
        ["<S-l>"] = false,
        ["<S-h>"] = false,

        -- other plugins
        ["<C-e>"] = ":bdelete!<CR>",
        ["<C-b>"] = ":NvimTreeToggle<CR>",
        ["<C-s>"] = ":w<CR>",
    },
}

return keys
