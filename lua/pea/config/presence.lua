local M = {}

M.config = function()
    local status_ok, presence = pcall(require, "presence")

    if not status_ok then
        return
    end

    local client_id = {
        vs_code = "383226320970055681",
        coc_nvim = "768090036633206815",
        pea_vim = "914799712794705961",
    }

    presence:setup {
        auto_update = true,
        neovim_image_text = "NeoVim, not Vim pls!",
        main_image = "file",
        client_id = client_id.pea_vim,
        buttons = true,
        workspace_text = function()
            return "Rustacean"
        end,
    }
end

return M
