local M = {}

local colors = {
    bg = "#212121",
    fg = "#eceef0",
    yellow = "#f5e960",
    cyan = "#64fcda",
    darkblue = "#081633",
    green = "#9ee37d",
    jungle_green = "#00b295",
    orange = "#FF8840",
    violet = "#a9a1e1",
    magenta = "#ff3f80",
    blue = "#00b0ff",
    red = "#ee2c68",
}

local conditions = {
    buffer_not_empty = function()
        return vim.fn.empty(vim.fn.expand "%:t") ~= 1
    end,
    hide_in_width = function()
        return vim.fn.winwidth(0) > 80
    end,
    check_git_workspace = function()
        local filepath = vim.fn.expand "%:p:h"
        local gitdir = vim.fn.finddir(".git", filepath .. ";")
        return gitdir and #gitdir > 0 and #gitdir < #filepath
    end,
}

M.config = function()
    -- Config
    local config = {
        options = {
            component_separators = "",
            section_separators = "",
            theme = {
                normal = { c = { fg = colors.fg, bg = colors.bg } },
                inactive = { c = { fg = colors.fg, bg = colors.bg } },
            },
            disabled_filetypes = { "NvimTree", "dashboard", "toggleterm", "alpha" },
        },
        sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_y = {},
            lualine_z = {},

            -- only fill here
            lualine_c = {},
            lualine_x = {},
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_y = {},
            lualine_z = {},
            lualine_c = {},
            lualine_x = {},
        },
    }

    -- Inserts a component in lualine_c at left section
    local function ins_left(component)
        table.insert(config.sections.lualine_c, component)
    end

    -- Inserts a component in lualine_x at right section
    local function ins_right(component)
        table.insert(config.sections.lualine_x, component)
    end

    ins_left {
        function()
            return "▊"
        end,
        color = { fg = colors.blue }, -- Sets highlighting of component
        padding = { left = 0, right = 1 }, -- We don't need space before this
    }

    ins_left {
        -- mode component
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
    }

    ins_left {
        "filesize",
        cond = conditions.buffer_not_empty,
    }

    ins_left {
        "filetype",
    }

    ins_left { "location" }

    ins_left {
        "diagnostics",
        sources = { "nvim_diagnostic" },
        symbols = { error = " ", warn = " ", info = " " },
        diagnostics_color = {
            color_error = { fg = colors.red },
            color_warn = { fg = colors.yellow },
            color_info = { fg = colors.cyan },
        },
    }

    local status_ok, gps = pcall(require, "nvim-gps")
    if status_ok then
        ins_left {
            gps.get_location,
            cond = gps.is_available,
        }
    end

    ins_left {
        function()
            return "%="
        end,
    }

    ins_left {
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
    }

    -- Add components to right sections
    ins_right {
        "o:encoding", -- option component same as &encoding in viml
        cond = conditions.hide_in_width,
        color = { fg = colors.green, gui = "bold" },
    }

    -- os icon
    ins_right {
        function()
            return ""
        end,
        color = { fg = colors.fg },
    }

    ins_right {
        "branch",
        color = { fg = colors.violet, gui = "bold" },
    }

    ins_right {
        "diff",
        symbols = { added = " ", modified = " 柳", removed = "  " },
        diff_color = {
            added = { fg = colors.green },
            modified = { fg = colors.orange },
            removed = { fg = colors.red },
        },
        cond = conditions.hide_in_width,
    }

    ins_right {
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
    }

    -- Now don't forget to initialize lualine
    lvim.builtin.lualine.options = config.options
    lvim.builtin.lualine.sections = config.sections
    lvim.builtin.lualine.inactive_sections = config.inactive_sections
end

return M
