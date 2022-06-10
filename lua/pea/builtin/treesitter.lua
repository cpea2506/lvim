local opts = {
    sync_install = true,
    ensure_installed = {
        "rust",
        "swift",
        "lua",
        "typescript",
        "tsx",
        "javascript",
        "bash",
        "json",
        "markdown",
        "comment",
        "regex",
        "dockerfile",
        "scss",
        "css",
        "toml",
        "html",
        "yaml",
    },
    autotag = {
        enable = true,
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
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
}

return opts
