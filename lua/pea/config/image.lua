return function()
    local status_ok, image = pcall(require, "image")

    if not status_ok then
        return
    end

    image.setup {
        render = {
            min_padding = 5,
            show_label = true,
            use_dither = true,
        },
        events = {
            update_on_nvim_resize = true,
        },
    }
end
