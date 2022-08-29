local conditions = require "pea.builtin.lualine.conditions"
local colors = require "pea.builtin.lualine.colors"

local components = {
    leftbar = {
        function()
            return "▊"
        end,
        color = { fg = colors.blue }, -- set highlighting of component
        padding = { left = 0, right = 1 }, -- we don't need space before this
    },
    evil = {
        function()
            -- auto change color according to neovims mode
            local mode_color = {
                n = colors.red,
                i = colors.green,
                v = colors.blue,
                [""] = colors.blue,
                V = colors.blue,
                c = colors.magenta,
                no = colors.red,
                s = colors.orange,
                S = colors.orange,
                [""] = colors.orange,
                ic = colors.yellow,
                R = colors.violet,
                Rv = colors.violet,
                cv = colors.red,
                ce = colors.red,
                r = colors.cyan,
                rm = colors.cyan,
                ["r?"] = colors.cyan,
                ["!"] = colors.red,
                t = colors.red,
            }

            vim.api.nvim_set_hl(0, "LualineMode", {
                fg = mode_color[vim.fn.mode()],
                bg = colors.bg,
            })

            return ""
        end,
        color = "LualineMode",
        padding = { right = 1 },
    },
    filesize = {
        "filesize",
        cond = conditions.buffer_not_empty,
    },
    diagnostics = {
        "diagnostics",
        sources = { "nvim_diagnostic" },
        symbols = {
            error = " ",
            warn = " ",
            info = " ",
        },
        diagnostics_color = {
            color_error = { fg = colors.red },
            color_warn = { fg = colors.yellow },
            color_info = { fg = colors.cyan },
        },
    },
    center = {
        function()
            return "%="
        end,
    },
    lsp = {
        function(msg)
            msg = msg or "LS Inactive"

            local buf_clients = vim.lsp.buf_get_clients()

            if vim.tbl_isempty(buf_clients) then
                return type(msg) == "boolean" or #msg == 0 and "LS Inactive" or msg
            end

            local buf_ft = vim.bo.filetype
            local buf_client_names = {}

            for _, client in pairs(buf_clients) do
                if client.name ~= "null-ls" then
                    table.insert(buf_client_names, client.name)
                end
            end

            -- add formatter
            local formatters = require "lvim.lsp.null-ls.formatters"
            local supported_formatters = formatters.list_registered(buf_ft)
            vim.list_extend(buf_client_names, supported_formatters)

            -- add linter
            local linters = require "lvim.lsp.null-ls.linters"
            local supported_linters = linters.list_registered(buf_ft)
            vim.list_extend(buf_client_names, supported_linters)

            return table.concat(buf_client_names, " | ")
        end,
        icon = " LSP:",
        color = { fg = colors.jungle_green, gui = "bold" },
    },
    diff = {
        "diff",
        source = function()
            local gitsigns = vim.b.gitsigns_status_dict

            if gitsigns then
                return {
                    added = gitsigns.added,
                    modified = gitsigns.changed,
                    removed = gitsigns.removed,
                }
            end
        end,
        symbols = {
            added = " ",
            modified = " 柳",
            removed = "  ",
        },
        diff_color = {
            added = { fg = colors.green },
            modified = { fg = colors.orange },
            removed = { fg = colors.red },
        },
        cond = conditions.should_hide_in_width,
    },
    branch = {
        "b:gitsigns_head",
        icon = "",
        color = { fg = colors.violet, gui = "bold" },
        cond = conditions.should_hide_in_width,
    },
    os = {
        function()
            -- no room for window
            return vim.fn.has "mac" and "" or ""
        end,
        cond = conditions.should_hide_in_width,
        color = { fg = colors.fg },
    },
    encoding = {
        "o:encoding",
        cond = conditions.should_hide_in_width,
        color = { fg = colors.green, gui = "bold" },
    },
    treesitter = {
        function()
            local buf = vim.api.nvim_get_current_buf()
            local active_status = vim.treesitter.highlighter.active[buf]

            return active_status and "滑" or ""
        end,
        color = { fg = colors.green },
        padding = { right = 0 },
    },
    scrollbar = {
        function()
            local current = vim.fn.line "."
            local total = vim.fn.line "$"
            local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
            local index = math.ceil(current / total * #chars)

            return chars[index]
        end,
        color = { fg = colors.yellow },
        padding = { left = 1 },
    },
}

return components
