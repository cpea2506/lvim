local nvimtree = {
    active = true,
    setup = {
        disable_netrw = false,
        hijack_cursor = true,
        open_on_setup = true,
        update_cwd = true,
        hijack_unnamed_buffer_when_opening = true,
        filesystem_watchers = {
            enable = true,
        },
        diagnostics = {
            enable = false,
        },
        actions = {
            open_file = {
                quit_on_open = true,
                resize_window = true,
            },
        },
        view = {
            centralize_selection = true,
            adaptive_size = false,
            side = "right",
            preserve_window_proportions = true,
        },
        renderer = {
            indent_markers = {
                enable = true,
            },
            icons = {
                glyphs = {
                    git = {
                        unstaged = "✗",
                        staged = "✓",
                        untracked = "★",
                    },
                },
            },
        },
    },
}

return nvimtree
