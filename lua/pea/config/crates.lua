local M = {}

M.config = function()
    local status_ok, crates = pcall(require, "crates")

    if not status_ok then
        return
    end

    crates.setup {
        avoid_prerelease = false,
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

return M
