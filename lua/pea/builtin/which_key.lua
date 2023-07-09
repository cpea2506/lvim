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
        t = {
            name = "Trouble",
            o = { "<cmd>TroubleToggle<cr>", "Show diagnostics" },
        },
        i = { "<cmd>Inspect<cr>", "Inspect highlighting" },
        T = {
            u = { "<cmd>TSUpdateSync<cr>", "Sync update" },
            h = { "<cmd>TSHighlightCapturesUnderCursor<cr>", "Show highlighting group" },
            p = { "<cmd>TSPlaygroundToggle<cr>", "Toggle playground" },
        },
    },
}

return which_key
