return function()
    local status_ok, cinnamon = pcall(require, "cinnamon")

    if not status_ok then
        return
    end

    cinnamon.setup {
        default_keymaps = true,
        extra_keymaps = true,
        extended_keymaps = true,
        always_scroll = true,
    }
end
