lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"

local config = function()
    local header = {
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
    }

    local text = require "lvim.interface.text"
    local packer_path = vim.fn.stdpath "data" .. "/site/pack/packer/start"
    local num_plugins_loaded = #vim.fn.globpath(packer_path, "*", 0, 1)

    local footer = {
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
    }

    local function button(sc, txt, keybind)
        local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

        local opts = {
            position = "center",
            shortcut = sc,
            cursor = 5,
            width = 50,
            align_shortcut = "right",
            hl = "DashBoardCenter",
            hl_shortcut = "Keyword",
            keymap = { "n", sc_, keybind, { noremap = true, silent = true } },
        }

        local on_press = function()
            local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
            vim.api.nvim_feedkeys(key, "normal", false)
        end

        return {
            type = "button",
            val = txt,
            on_press = on_press,
            opts = opts,
        }
    end

    local buttons = {
        type = "group",
        val = {
            button("SPC f", "  Find File", "<CMD>Telescope find_files<CR>"),
            button("SPC n", "  New File", "<CMD>ene!<CR>"),
            button("SPC P", "  Recent Projects ", "<CMD>Telescope projects<CR>"),
            button("SPC s r", "  Recently Used Files", "<CMD>Telescope oldfiles<CR>"),
            button("SPC s t", "  Find Word", "<CMD>Telescope live_grep<CR>"),
            button(
                "SPC L c",
                "  Configuration",
                "<CMD>edit " .. require("lvim.config").get_user_config_path() .. " <CR>"
            ),
        },
        opts = {
            spacing = 1,
        },
    }

    return {
        layout = {
            { type = "padding", val = 2 },
            header,
            { type = "padding", val = 2 },
            buttons,
            { type = "padding", val = 1 },
            footer,
        },
        opts = {
            margin = 5,
        },
    }
end

lvim.builtin.alpha.dashboard.config = config()
