local which_key = {
    setup = {
        window = {
            border = "rounded",
        },
    },
    mappings = {
        T = {
            name = "Treesitter",
            i = { "<cmd>TSConfigInfo<cr>", "Info" },
            u = { "<cmd>TSUpdateSync<cr>", "Sync update" },
            h = { "<cmd>TSHighlightCapturesUnderCursor<cr>", "Show highlighting group" },
            p = { "<cmd>TSPlaygroundToggle<cr>", "Toggle playground" },
        },
    },
}

return which_key
