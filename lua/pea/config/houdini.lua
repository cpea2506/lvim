return function()
    require("houdini").setup {
        mappings = { "kj", "jk" },
        escape_sequences = {
            t = false,
        },
    }
end
