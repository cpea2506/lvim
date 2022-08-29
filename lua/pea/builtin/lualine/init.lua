local components = require "pea.builtin.lualine.components"
local colors = require "pea.builtin.lualine.colors"

local lualine = {
    options = {
        icons_enabled = true,
        component_separators = "",
        section_separators = "",
        theme = {
            normal = {
                c = { fg = colors.fg, bg = colors.bg },
            },
            inactive = {
                c = { fg = colors.fg, bg = colors.bg },
            },
        },
        disabled_filetypes = {
            "TelescopePrompt",
            "NvimTree",
            "toggleterm",
            "alpha",
            "DressingInput",
            "mason",
            "lspinfo",
            "null-ls-info",
            "packer",
        },
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
            components.filetype,
            components.location,
            components.diagnostics,
            components.center,
            components.lsp,
        },
        lualine_x = {
            components.treesitter,
            components.os,
            components.encoding,
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
}

return lualine
