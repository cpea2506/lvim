return function()
    require("clear-action").setup {
        mappings = {
            code_action = "<leader>la",
            quickfix = "<leader>lq",
        },
    }
end
