---@diagnostic disable-next-line: missing-parameter
local filename = vim.fn.expand "%:r"

if filename and filename:match "Cargo" then
    lvim:set {
        lsp = {
            buffer_mappings = {
                normal_mode = {
                    ["K"] = { ":lua require('crates').show_popup()<CR>", "Show popup" },
                },
            },
        },
        builtin = {
            cmp = {
                formatting = {
                    source_names = {
                        crates = "(Crates)",
                    },
                },
            },
            which_key = {
                mappings = {
                    c = {
                        name = "Crates",
                        a = { ":lua require('crates').update_all_crates()<CR>", "Update all crates" },
                        A = { ":lua require('crates').upgrade_all_crates()<CR>", "Upgrade all crates" },
                        c = { ":lua require('crates').show_crate_popup()<CR>", "Show crate popup" },
                        C = { ":lua require('crates').open_crates_io()<CR>", "Open crates.io" },
                        d = { ":lua require('crates').show_dependencies_popup()<CR>", "Show dependencies" },
                        D = { ":lua require('crates').open_documentation()<CR>", "Open documentation" },
                        f = { ":lua require('crates').show_features_popup()<CR>", "Show features" },
                        h = { ":lua require('crates').open_homepage()<CR>", "Open homepage" },
                        r = { ":lua require('crates').reload()<CR>", "Reload" },
                        R = { ":lua require('crates').open_repository()<CR>", "Open repository" },
                        t = { ":lua require('crates').toggle()<CR>", "Toggle" },
                        u = { ":lua require('crates').update_crate()<CR>", "Update crate" },
                        U = { ":lua require('crates').upgrade_crate()<CR>", "Upgrade crate" },
                        v = { ":lua require('crates').show_versions_popup()<CR>", "Show versions" },
                    },
                },
            },
        },
    }
end
