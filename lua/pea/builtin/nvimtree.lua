local nvimtree = {
    active = true,
    setup = {
        hijack_cursor = true,
        open_on_setup = true,
        sync_root_with_cwd = true,
        hijack_unnamed_buffer_when_opening = true,
        create_in_closed_folder = true,
        diagnostics = {
            enable = false,
        },
        hijack_directories = {
            enable = true,
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
            float = {
                enable = true,
                open_win_config = {
                    -- display on the right, this is different from side
                    col = vim.o.columns - 30,
                    height = vim.o.lines,
                },
            },
        },
        renderer = {
            full_name = true,
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
