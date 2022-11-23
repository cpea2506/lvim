return function()
    require("noice").setup {
        cmdline = {
            view = "cmdline",
        },
        popupmenu = {
            backend = "cmp",
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
