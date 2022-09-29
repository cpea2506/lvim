return function()
    local colors = require "one_monokai.colors"

    require("todo-comments").setup {
        keywords = {
            HACK = { color = "hack" },
            PERF = { color = "perf" },
        },
        colors = {
            perf = { colors.purple },
            hack = { colors.cyan },
        },
    }
end
