return function()
    require("flash").setup {
        {
            search = {
                incremental = true,
            },
            jump = {
                nohlsearch = true,
                autojump = true,
            },
        },
    }
end
