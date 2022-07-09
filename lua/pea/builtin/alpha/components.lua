local user_config_path = require("lvim.config"):get_user_config_path()
local text = require "lvim.interface.text"
local packer_path = get_runtime_dir() .. "/site/pack/packer/start"
local num_plugins_loaded = #vim.fn.globpath(packer_path, "*", 0, 1)

local function button(sc, val, _)
    local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

    local opts = {
        position = "center",
        shortcut = sc,
        cursor = 5,
        width = 50,
        align_shortcut = "right",
        hl = "DashBoardCenter",
        hl_shortcut = "Keyword",
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
            button("SPC f", "  Find File", ":Telescope find_files<CR>"),
            button("SPC n", "  New File", ":ene!<CR>"),
            button("SPC P", "  Recent Projects ", ":Telescope projects<CR>"),
            button("SPC s r", "  Recently Used Files", ":Telescope oldfiles<CR>"),
            button("SPC s t", "  Find Word", ":Telescope live_grep<CR>"),
            button("SPC L c", "  Configuration", ":edit " .. user_config_path .. "<CR>"),
        },
        opts = {
            spacing = 1,
        },
    },
    footer = {
        type = "text",
        val = text.align_center({ width = 0 }, {
            "PeaVim loaded " .. num_plugins_loaded .. " plugins ",
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
