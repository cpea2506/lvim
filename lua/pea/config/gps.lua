local M = {}

M.config = function()
    local status_ok, gps = pcall(require, "nvim-gps")

    if not status_ok then
        return
    end

    gps.setup()
end

return M
