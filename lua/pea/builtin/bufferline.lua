local opts = {
    active = true,
    options = {
        always_show_bufferline = true,
        diagnostics = "",
        offsets = {},
        show_close_icon = true,
    },
    keymap = {
        normal_mode = {
            ["<Tab>"] = ":BufferLineCycleNext<CR>",
            ["<S-Tab>"] = ":BufferLineCyclePrev<CR>",
        },
    },
}

return opts
