local winwidth_limit = 85

local conditions = {
    buffer_not_empty = function()
        local buffer = vim.fn.expand "%:t"

        return vim.fn.empty(buffer) ~= 1
    end,
    should_hide_in_width = function()
        local current_winwidth = vim.fn.winwidth(0)

        return current_winwidth > winwidth_limit
    end,
}

return conditions
