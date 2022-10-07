return function()
    local sj = require "sj"

    sj.setup {
        auto_jump = true,
    }

    require("which-key").register({
        j = { sj.run, "Search jump" },
    }, lvim.builtin.which_key.opts)
end
