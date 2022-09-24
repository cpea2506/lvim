return function()
    require("dressing").setup {
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
