local bufferline = {
    active = true,
    options = {
        always_show_bufferline = true,
        diagnostics = false,
        offsets = false,
        show_buffer_close_icons = false,
        indicator = {
            style = "none",
        },
    },
    keymap = {
        normal_mode = {
            ["<Tab>"] = ":BufferLineCycleNext<CR>",
            ["<S-Tab>"] = ":BufferLineCyclePrev<CR>",
        },
    },
}

return bufferline
