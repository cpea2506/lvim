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
        kind_icons = {
            Class = "ﴯ",
            Module = "",
            Struct = "פּ",
        },
    },
}

vim.list_extend(lvim.builtin.cmp.sources, {
    { name = "nvim_lsp_signature_help" },
    { name = "rg" },
})

return cmp
