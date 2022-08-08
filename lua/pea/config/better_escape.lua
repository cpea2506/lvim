return function()
    local status_ok, better_escape = pcall(require, "better_escape")

    if not status_ok then
        return
    end

    better_escape.setup {
        mapping = { "jk", "kj" },
        clear_empty_lines = false,
        keys = function()
            return vim.api.nvim_win_get_cursor(0)[2] > 1 and "<esc>l" or "<esc>"
        end,
    }
end
