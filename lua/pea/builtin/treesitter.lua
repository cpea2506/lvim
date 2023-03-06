local treesitter = {
    ensure_installed = {
        "rust",
        "lua",
        "vim",
        "typescript",
        "tsx",
        "bash",
        "json",
        "markdown",
        "comment",
        "regex",
        "scss",
        "svelte",
        "toml",
        "yaml",
    },
    autotag = {
        enable = true,
    },
    highlight = {
        enable = true,
    },
    rainbow = {
        enable = true,
        hlgroups = {
            "rainbowcol1",
            "rainbowcol2",
            "rainbowcol3",
            "rainbowcol4",
            "rainbowcol5",
            "rainbowcol6",
            "rainbowcol7",
        },
    },
    playground = {
        enable = true,
    },
}

return treesitter
