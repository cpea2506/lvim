return function()
    local status_ok, barbecue = pcall(require, "barbecue")

    if not status_ok then
        return
    end

    barbecue.setup {
        dirname_mods = ":.",
        separator = " ❯ ",
        no_info_indicator = "∅",
    }
end
