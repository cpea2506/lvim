local status_ok, nvim_cmp = pcall(require, "cmp")

if status_ok then
    local cmdline_mappings = nvim_cmp.mapping.preset.cmdline()
    cmdline_mappings["<C-j>"] = cmdline_mappings["<S-Tab>"]
    cmdline_mappings["<C-k>"] = cmdline_mappings["<Tab>"]

    local cmdline_setup = nvim_cmp.setup.cmdline
    cmdline_setup(":", {
        mapping = cmdline_mappings,
        sources = {
            { name = "cmdline" },
        },
    })
    cmdline_setup({ "/", "?" }, {
        mapping = cmdline_mappings,
        sources = {
            { name = "buffer" },
        },
    })
end

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
    experimental = {
        ghost_text = true,
    },
    sources = {
        { name = "nvim_lsp_signature_help" },
        { name = "rg" },
        unpack(lvim.builtin.cmp.sources),
    },
    formatting = {
        source_names = {
            crates = "(Crates)",
        },
    },
}

return cmp
