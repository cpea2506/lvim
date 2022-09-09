local text = require "lvim.interface.text"
local user_config_path = require("lvim.config"):get_user_config_path()

local function get_num_plugin_loaded()
    local packer_path = join_paths(get_runtime_dir(), "site", "pack", "packer", "*")

    return #vim.fn.globpath(packer_path, "*", 0, 1)
end

local function button(sc, val, keybind)
    local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

    local opts = {
        position = "center",
        shortcut = sc,
        cursor = 5,
        width = 50,
        align_shortcut = "right",
        hl = "DashBoardCenter",
        hl_shortcut = "Keyword",
        keymap = {
            "n",
            sc_,
            keybind,
            {
                silent = true,
                nowait = true,
                noremap = true,
            },
        },
    }

    local on_press = function()
        local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
        vim.api.nvim_feedkeys(key, "normal", false)
    end

    return {
        type = "button",
        val = val,
        on_press = on_press,
        opts = opts,
    }
end

local components = {
    header = {
        type = "text",
        val = {
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⡿⣟⣶⣿⣧⣿⣿⣦⢿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣏⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⠘⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⠀⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠂⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣦⡙⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣶⡿⣿⣿⣶⣦⣭⠻⢿⣿⣿⣿⣷⡙⣿⣿⣿⣿⢹⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⢿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣦⠻⣿⣿⣿⣶⠙⣿⣿⣸⣿⣿⣿⣿⡟⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣄⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⡙⣿⣿⣿⣷⣍⠻⣿⣿⣿⣿⣿⣾⣿⣿⣷⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣶⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣭⣭⣭⣭⣙⣛⠿⣿⣿⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣍⢿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣭⣛⢿⣿⣿⣿⣿⣿⣿⣦⢻⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣿⣿⣿⣿⣿⣿⣿⣿⡻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡹⣿⣿⣿⣿⣿⡄⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠉⠙⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⠁ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⣿⣿⠿⣿⠿⢷⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⡇⣿⡿⣿⠿⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⢠⣿⣿⠋⠀⣴⣿⠿⠉⠀⠀⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⡿⣿⣛⢿⣿⣸⣶⡿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⢀⣿⣿⠀⠀⣰⡿⡟⠀⠀⠀⠀⣾⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⡿     ⣿⣿⣿ ⣉⣭⠿⠉⣼⡿⠟⠀⠛⢿⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⢸⣿⠃⠀⢀⣿⣿⠀⠀⠀⠀⣠⣿⣿⠀⣤⣾⣿⣿⣦⡀⠀⣠⣶⣿⣿⣶⣾⣷⣿⣿⠻⠿⣿⣿⣿⣿⣿⣿⠟⠉⠀⠀⠀⣼⡿⡟⠀⣾⣶⠀⠀⣼⣷⣾⣿⢿⣦⣠⣾⣿⣿⣶⣀⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠀⠙ ⠀⣾⣿⣥⣀⣀⣤⣾⡿⠟⢠⣿⡿⠋⣀⣾⡿⠃⣾⡿⠟⠀⠀⣿⡿⠋⠈⠿⣶⣤⠀⠀⠀⢸⣿⡟⠀⠀⠀⠀⣰⡿⡿⠀⣾⡿⠋⠀⢰⣿⣿⠋⠀⢸⣿⣿⠛⠀⢠⣿⣿⠀⠀⠀",
            "⠀⠀⣀⣤⣀⠀⠀⠀⣸⣿⡟⠀⠉⠙⠉⠁⠀⢀⣿⣿⣿⣿⠿⠛⠀⣼⣿⠋⠀⠀⣼⣿⡟⠀⢀⣀⠀ ⠀⠀⠀⣿⣿⠀⠀⠀⠀⣰⣿⡿⠀⣼⡿⡿⠀⢠⣿⣿⠁⠀⢀⣿⣿⠁⠀⠀⣿⣿⠀⠀⣠⠀",
            "⣰⣿⡿⠉⠉⠀⠀⢠⣿⣿⠀⠀⠀⠀⠀⠀⠀⣾⡿⠉⠀⠀⠀⠀⣼⣿⣿⠀⠀⣼⣿⣿⠀⢠⣿⣿⠁⠀⠀⠀⢸⡿⠏⠀⠀⠀⣰⣿⡿⠀⢀⣿⣿⢀⢠⣿⡿⠁⠀⠀⣾⡿⠁⠀⠀⣾⡿⠋⠀⣼⡿⠟",
            "⣿⣿⠀⠀⠀⠀⣰⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣆⣀⣠⣴⣿⡿⣿⣿⣤⣿⣿⣿⣇⣶⣿⡿⠁⠀⠀⠀⠀⢸⣿⠀⠀⢀⣾⡿⠛⠀⠀⠸⡿⣇⣴⣿⣿⠃⠀⠀⣼⡿⠟⠀⠀⠀⣿⣿⣠⣾⣿⠋⠀",
            "⠀⠻⢷⣶⣾⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠉⠉⠉⠉  ⠀⠈⠉⠉⠀⠀⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣿⠿⠛⠀⠀⠀⠀⠀ ⠉⠉⠉⠉⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠈⠉⠉⠀⠀⠀",
        },
        opts = {
            position = "center",
            hl = "DashBoardHeader",
        },
    },
    buttons = {
        type = "group",
        val = {
            button("SPC f", "  Find File", ":Telescope find_files<cr>"),
            button("SPC n", "  New File", ":ene!<cr>"),
            button("SPC P", "  Recent Projects ", ":Telescope projects<cr>"),
            button("SPC s r", "  Recently Used Files", ":Telescope oldfiles<cr>"),
            button("SPC s t", "  Find Word", ":Telescope live_grep<cr>"),
            button("SPC L c", "  Configuration", ":edit " .. user_config_path .. "<cr>"),
        },
        opts = {
            spacing = 1,
        },
    },
    footer = {
        type = "text",
        val = text.align_center({ width = 0 }, {
            "PeaVim loaded " .. get_num_plugin_loaded() .. " plugins ",
            "",
            "Let me show you what is true text editor!",
        }, 0.5),
        opts = {
            position = "center",
            hl = "DashBoardFooter",
        },
    },
}

return components
