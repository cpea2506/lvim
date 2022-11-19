return function()
    require("dressing").setup {
        input = {
            winblend = 0,
            anchor = "NW",
            insert_only = false,
            override = function(conf)
                conf.col = 1
                conf.row = 1

                return conf
            end,
            mappings = {
                n = {
                    ["q"] = "Close",
                },
            },
        },
        select = {
            backend = { "telescope" },
        },
    }
end
