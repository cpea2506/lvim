return function()
    local status_ok, dressing = pcall(require, "dressing")

    if not status_ok then
        return
    end

    dressing.setup {
        input = {
            enabled = true,
            winblend = 0,
            anchor = "NW",
            override = function(conf)
                conf.col = 1
                conf.row = 1

                return conf
            end,
        },
        select = {
            enabled = true,
            backend = { "telescope" },
        },
    }
end
