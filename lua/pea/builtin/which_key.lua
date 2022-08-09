local which_key = {
    mappings = {
        T = {
            name = "Treesitter",
            i = { ":TSConfigInfo<CR>", "Info" },
            u = { ":TSUpdateSync<CR>", "Sync update" },
            h = { ":TSHighlightCapturesUnderCursor<CR>", "Show highlighting group" },
            p = { ":TSPlaygroundToggle<CR>", "Toggle playground" },
        },
    },
}

return which_key
