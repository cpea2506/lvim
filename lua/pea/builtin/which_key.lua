local which_key = {
    setup = {
        window = {
            border = "rounded",
        },
        ignore_missing = true,
        triggers = { "<leader>" },
        show_keys = false,
    },
    mappings = {
        s = {
            b = { "<cmd>Telescope file_browser<cr>", "File browser" },
        },
        t = {
            name = "Trouble",
            o = { "<cmd>TroubleToggle<cr>", "Show diagnostics" },
        },
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
