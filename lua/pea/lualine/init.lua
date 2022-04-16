local components = require "pea.lualine.components"
local colors = require "pea.lualine.colors"

local config = {
    options = {
        icons_enabled = true,
        component_separators = "",
        section_separators = "",
        theme = {
            normal = { c = { fg = colors.fg, bg = colors.bg } },
            inactive = { c = { fg = colors.fg, bg = colors.bg } },
        },
        disabled_filetypes = { "NvimTree", "toggleterm", "alpha" },
        globalstatus = true,
    },
    sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_y = {},
        lualine_z = {},
        lualine_c = {
            components.leftbar,
            components.evil,
            components.filesize,
            "filetype",
            "location",
            components.diagnostics,
            components.center,
            components.lsp,
        },
        lualine_x = {
            components.encoding,
            components.os,
            components.branch,
            components.diff,
            components.scrollbar,
        },
    },
    inactive_sections = {
        lualine_a = {
            "filename",
        },
        lualine_b = {},
        lualine_y = {},
        lualine_z = {},
        lualine_c = {},
        lualine_x = {},
    },
    extensions = { "nvim-tree" },
}

lvim.builtin.lualine.options = config.options
lvim.builtin.lualine.sections = config.sections
lvim.builtin.lualine.inactive_sections = config.inactive_sections
lvim.builtin.lualine.extensions = config.extensions
