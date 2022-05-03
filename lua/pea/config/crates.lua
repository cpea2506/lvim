local M = {}

M.config = function()
    local status_ok, crates = pcall(require, "crates")

    if not status_ok then
        return
    end

    crates.setup {
        smart_insert = true,
        insert_closing_quote = true,
        avoid_prerelease = false,
        autoload = true,
        autoupdate = true,
        loading_indicator = true,
        date_format = "%Y-%m-%d",
        notification_title = "Crates",
        disable_invalid_feature_diagnostic = true,
        text = {
            loading = "   Loading",
            version = "   %s",
            prerelease = "   %s",
            yanked = "   %s",
            nomatch = "   No match",
            upgrade = "   %s",
            error = "   Error fetching crate",
        },
        src = {
            insert_closing_quote = true,
            text = {
                prerelease = "  pre-release ",
                yanked = "  yanked ",
            },
        },
        null_ls = {
            enabled = true,
            name = "Crates",
        },
    }
end

return M
