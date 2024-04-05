return function()
    require("crates").setup {
        date_format = "%d-%m-%Y",
        disable_invalid_feature_diagnostic = true,
        popup = {
            autofocus = true,
            border = "rounded",
        },
        null_ls = {
            enabled = true,
        },
    }
end
