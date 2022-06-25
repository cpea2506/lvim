local cmp = {
    view = {
        entries = {
            name = "custom",
            selection_order = "near_cursor",
        },
    },
    confirm_opts = {
        select = true,
    },
    formatting = {
        source_names = {
            crates = "(Crates)",
        },
    },
}

return cmp
