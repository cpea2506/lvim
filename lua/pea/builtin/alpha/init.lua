local components = require "pea.builtin.alpha.components"

local alpha = {
    active = true,
    mode = "dashboard",
    dashboard = {
        config = {
            layout = {
                { type = "padding", val = 2 },
                components.header,
                { type = "padding", val = 2 },
                components.buttons,
                { type = "padding", val = 1 },
                components.footer,
            },
            opts = {
                margin = 5,
            },
        },
    },
}

return alpha
