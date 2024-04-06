return function()
    vim.g.rustaceanvim = {
        tools = {
            executor = "toggleterm",
        },
        server = {
            on_attach = function()
                vim.keymap.set("n", "gd", vim.lsp.buf.definition)
            end,
        },
    }
end
