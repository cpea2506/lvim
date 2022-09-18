return function()
    local status_ok, headband = pcall(require, "nvim-headband")

    if not status_ok then
        return
    end

    headband.setup()
end
