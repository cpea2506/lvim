return function()
    require("presence").setup {
        neovim_image_text = "LunarVim",
        main_image = "file",
        log_level = nil,
        client_id = "914799712794705961",
        show_time = false,
        workspace_text = function()
            return "Crababarian 🦀"
        end,
    }
end
