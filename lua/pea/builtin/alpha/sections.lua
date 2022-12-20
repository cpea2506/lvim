local text = require "lvim.interface.text"

local function get_num_plugin_loaded()
    local packer_path = join_paths(get_runtime_dir(), "site", "pack", "packer", "*")

    return #vim.fn.globpath(packer_path, "*", 0, 1)
end

local sections = {
    header = {
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
            hl = "DashBoardHeader",
        },
    },
    buttons = {
        opts = {
            hl = "DashBoardCenter",
            hl_shortcut = "Keyword",
        },
    },
    footer = {
        val = text.align_center({ width = 0 }, {
            "PeaVim loaded " .. get_num_plugin_loaded() .. " plugins ",
            "",
            "Let me show you what is true text editor!",
        }, 0.5),
        opts = {
            hl = "DashBoardFooter",
        },
    },
}

return sections