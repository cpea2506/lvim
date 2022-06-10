local conditions = require "lvim.core.lualine.conditions"
local colors = require "pea.builtin.lualine.colors"

local function diff_source()
    local gitsigns = vim.b.gitsigns_status_dict

    if gitsigns then
        return {
            added = gitsigns.added,
            modified = gitsigns.changed,
            removed = gitsigns.removed,
        }
    end
end

local components = {
    leftbar = {
        function()
            return "▊"
        end,
        color = { fg = colors.blue }, -- Sets highlighting of component
        padding = { left = 0, right = 1 }, -- We don't need space before this
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
            vim.api.nvim_command("hi! LualineMode guifg=" .. mode_color[vim.fn.mode()] .. " guibg=" .. colors.bg)
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
        symbols = { error = " ", warn = " ", info = " " },
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
            if next(buf_clients) == nil then
                return type(msg) == "boolean" or #msg == 0 and "LS Inactive" or msg
            end
            local buf_ft = vim.bo.filetype
            local buf_client_names = {}

            -- add client
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

            return table.concat(buf_client_names, ", ")
        end,
        icon = " LSP:",
        color = { fg = colors.jungle_green, gui = "bold" },
    },
    diff = {
        "diff",
        source = diff_source,
        symbols = { added = " ", modified = " 柳", removed = "  " },
        diff_color = {
            added = { fg = colors.green },
            modified = { fg = colors.orange },
            removed = { fg = colors.red },
        },
        cond = conditions.hide_in_width,
    },
    branch = {
        "branch",
        color = { fg = colors.violet, gui = "bold" },
    },
    os = {
        function()
            return ""
        end,
        color = { fg = colors.fg },
    },
    encoding = {
        "o:encoding", -- option component same as &encoding in viml
        cond = conditions.hide_in_width,
        color = { fg = colors.green, gui = "bold" },
    },
    scrollbar = {
        function()
            local current_line = vim.fn.line "."
            local total_lines = vim.fn.line "$"
            local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }

            local progress_percent = current_line / total_lines
            local index = math.ceil(progress_percent * #chars)
            return chars[index]
        end,
        color = { fg = colors.yellow },
        padding = { left = 1 },
    },
}

return components
