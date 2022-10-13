return function()
    local keys = {
        normal_mode = {
            ["<M-j>"] = ":MoveLine(1)<CR>",
            ["<M-k>"] = ":MoveLine(-1)<CR>",
            ["<M-h>"] = ":MoveHChar(-1)<CR>",
            ["<M-l>"] = ":MoveHChar(1)<CR>",
        },
        visual_mode = {
            ["<M-j>"] = ":MoveBlock(1)<CR>",
            ["<M-k>"] = ":MoveBlock(-1)<CR>",
            ["<M-h>"] = ":MoveHBlock(-1)<CR>",
            ["<M-l>"] = ":MoveHBlock(1)<CR>",
        },
    }

    require("lvim.keymappings").load(keys)
end
