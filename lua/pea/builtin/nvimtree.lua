local nvimtree = {
    active = true,
    setup = {
        hijack_cursor = true,
        sync_root_with_cwd = true,
        hijack_unnamed_buffer_when_opening = true,
        auto_reload_on_write = true,
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
                quit_on_focus_loss = false,
                open_win_config = function()
                    return {
                        row = 0,
                        width = 30,
                        border = "rounded",
                        relative = "editor",
                        col = vim.o.columns,
                        height = vim.o.lines,
                    }
                end,
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
