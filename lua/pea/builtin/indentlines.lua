local indentlines = {
    active = true,
    options = {
        indent_level = 10,
        max_indent_increase = 1,
        strict_tabs = true,
        filetype = { "svelte", "typescriptreact", "html" },
        use_treesitter_scope = true,
        char_highlight_list = {
            "IndentBlanklineIndent1",
            "IndentBlanklineIndent2",
            "IndentBlanklineIndent3",
            "IndentBlanklineIndent4",
            "IndentBlanklineIndent5",
            "IndentBlanklineIndent6",
        },
    },
}

return indentlines
