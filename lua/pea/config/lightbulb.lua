local M = {}

M.config = function()
    local status_ok, lightbulb = pcall(require, "nvim-lightbulb")

    if not status_ok then
        return
    end

    lightbulb.setup {
        ignore = {},
        sign = {
            enabled = true,
            priority = 10,
        },
        status_text = {
            enabled = true,
            text = "💡",
            text_unavailable = "",
        },
        autocmd = {
            enabled = true,
            pattern = { "*" },
            events = { "CursorHold", "CursorHoldI" },
        },
    }
end

return M
