return function()
    require("windows").setup()

    local keys = {
        normal_mode = {
            ["<C-w>a"] = "<cmd>WindowsMaximize<cr>",
            ["<C-w>="] = "<cmd>WindowsEqualize<cr>",
        },
    }

    require("lvim.keymappings").load(keys)
end
