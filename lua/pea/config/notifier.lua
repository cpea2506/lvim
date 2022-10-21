return function()
    require("notifier").setup {
        status_width = function()
            return vim.o.columns
        end,
    }
end
