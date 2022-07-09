local window_width_limit = 85

local conditions = {
    buffer_not_empty = function()
        ---@diagnostic disable-next-line: missing-parameter
        return vim.fn.empty(vim.fn.expand "%:t") ~= 1
    end,
    hide_in_width = function()
        return vim.fn.winwidth(0) > window_width_limit
    end,
}

return conditions
