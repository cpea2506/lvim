local keys = {
    normal_mode = {
        -- move.nvim
        ["<M-j>"] = ":MoveLine(1)<CR>",
        ["<M-k>"] = ":MoveLine(-1)<CR>",
        ["<M-h>"] = ":MoveHChar(-1)<CR>",
        ["<M-l>"] = ":MoveHChar(1)<CR>",

        -- windows.nvim
        ["<C-w>a"] = "<cmd>WindowsMaximize<cr>",
        ["<C-w>="] = "<cmd>WindowsEqualize<cr>",

        -- other
        ["<C-e>"] = "<cmd>BufferKill<cr>",
        ["<C-s>"] = "<cmd>w<cr>",
    },
    visual_mode = {
        -- move.nvim
        ["<M-j>"] = ":MoveBlock(1)<CR>",
        ["<M-k>"] = ":MoveBlock(-1)<CR>",
        ["<M-h>"] = ":MoveHBlock(-1)<CR>",
        ["<M-l>"] = ":MoveHBlock(1)<CR>",
    },
}

return keys
