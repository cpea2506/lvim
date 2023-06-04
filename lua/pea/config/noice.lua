return function()
    require("noice").setup {
        cmdline = {
            view = "cmdline",
            format = {
                cmdline = { icon_hl_group = "DevIconVim" },
                lua = { icon_hl_group = "DevIconLua" },
                help = { icon_hl_group = "Operator" },
            },
        },
        popupmenu = {
            backend = "cmp",
        },
        format = {
            spinner = {
                name = "circleFull",
            },
        },
        lsp = {
            override = {
                ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                ["vim.lsp.util.stylize_markdown"] = true,
                ["cmp.entry.get_documentation"] = true,
            },
            signature = {
                enabled = false,
            },
            progress = {
                format_done = {
                    { " ", hl_group = "Identifier" },
                    { "{data.progress.title} ", hl_group = "NoiceLspProgressTitle" },
                    { "{data.progress.client} ", hl_group = "NoiceLspProgressClient" },
                },
            },
        },
        presets = {
            long_message_to_split = true,
            lsp_doc_border = true,
        },
        views = {
            notify = {
                replace = true,
                merge = true,
            },
            mini = {
                win_options = {
                    winblend = 0,
                },
            },
        },
    }
end
