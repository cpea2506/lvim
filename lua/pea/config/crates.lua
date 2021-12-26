local M = {}

M.config = function()
    local status_ok, crates = pcall(require, "crates")

    if not status_ok then
        return
    end

    lvim.keys.normal_mode["K"] = [[:lua require("crates").show_versions_popup()<CR>]]
    lvim.keys.normal_mode["F"] = [[:lua require("crates").show_features_popup()<CR>]]

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
            version_date = false,
            max_height = 30,
            min_width = 20,
            text = {
                title = "  %s ",
                version = "   %s ",
                prerelease = "  %s ",
                yanked = "  %s ",
                date = " %s ",
                feature = "   %s ",
                enabled = "  %s ",
                transitive = "  %s ",
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
                goto_feature = { "gd", "K" },
                jump_forward_feature = { "<C-i>" },
                jump_back_feature = { "<C-o>" },
            },
        },
        cmp = {
            text = {
                prerelease = "  pre-release ",
                yanked = "  yanked ",
            },
        },
    }
end

return M
