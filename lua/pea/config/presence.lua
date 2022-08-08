return function()
    local status_ok, presence = pcall(require, "presence")

    if not status_ok then
        return
    end

    local client_id = {
        default = "793271441293967371",
        vs_code = "383226320970055681",
        coc_nvim = "768090036633206815",
        pea_vim = "914799712794705961",
    }

    local log_levels = {
        none = nil,
        error = "error",
        warn = "warn",
        info = "info",
        debug = "debug",
    }

    presence:setup {
        auto_update = true,
        neovim_image_text = "LunarVim",
        main_image = "file",
        log_level = log_levels.none,
        client_id = client_id.pea_vim,
        buttons = true,
        workspace_text = function()
            return "Rustacean"
        end,
    }
end
