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
        extended_mode = true,
        colors = {
            "#87cefa",
            "#e492e1",
            "#fed701",
            "#d03770",
            "#5a81ac",
            "#fe938c",
            "#a3f7b5",
        },
    },
    playground = {
        enable = true,
    },
}

return treesitter
