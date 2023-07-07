return function()
    require("flash").setup {
        search = {
            trigger = ":",
        },
        jump = {
            nohlsearch = true,
            autojump = true,
        },
    }
end
