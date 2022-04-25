local M = {}

M.config = function()
    local status_ok, crates = pcall(require, "crates")

    if not status_ok then
        return
    end

    crates.setup {
        smart_insert = true,
        avoid_prerelease = true,
        autoload = true,
        autoupdate = true,
        loading_indicator = true,
        date_format = "%Y-%m-%d",
        text = {
            loading = "   Loading",
            version = "   %s",
            prerelease = "   %s",
            yanked = "   %s",
            nomatch = "   No match",
            upgrade = "   %s",
            error = "   Error fetching crate",
        },
        highlight = {
            loading = "CratesNvimLoading",
            version = "CratesNvimVersion",
            prerelease = "CratesNvimPreRelease",
            yanked = "CratesNvimYanked",
            nomatch = "CratesNvimNoMatch",
            upgrade = "CratesNvimUpgrade",
            error = "CratesNvimError",
        },
        popup = {
            autofocus = true,
            copy_register = '"',
            style = "minimal",
            border = "rounded",
            show_version_date = false,
            show_dependency_version = true,
            max_height = 30,
            min_width = 20,
            text = {
                title = "  %s ",
                version = "   %s ",
                prerelease = "  %s ",
                yanked = "  %s ",
                version_date = " %s ",
                feature = "   %s ",
                enabled = "  %s ",
                transitive = "  %s ",
                dependency = "   %s ",
                optional = "  %s ",
                dependency_version = " %s ",
                loading = " ",
            },
            highlight = {
                title = "CratesNvimPopupTitle",
                version = "CratesNvimPopupVersion",
                prerelease = "CratesNvimPopupPreRelease",
                yanked = "CratesNvimPopupYanked",
                feature = "CratesNvimPopupFeature",
                enabled = "CratesNvimPopupEnabled",
                transitive = "CratesNvimPopupTransitive",
            },
            keys = {
                hide = { "q", "<ESC>" },
                select = { "<CR>" },
                select_alt = { "s" },
                copy_version = { "yy" },
                toggle_feature = { "<CR>" },
                goto_item = { "gd", "K" },
                jump_forward = { "<C-i>" },
                jump_back = { "<C-o>" },
            },
        },
        src = {
            insert_closing_quote = true,
            text = {
                prerelease = "  pre-release ",
                yanked = "  yanked ",
            },
        },
    }
end

return M
