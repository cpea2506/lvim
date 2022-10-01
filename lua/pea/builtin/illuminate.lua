local illuminate = {
    active = true,
    options = {
        filetypes_denylist = {
            "alpha",
            "DressingInput",
            unpack(lvim.builtin.illuminate.options.filetypes_denylist),
        },
    },
}

return illuminate
