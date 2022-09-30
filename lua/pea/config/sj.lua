return function()
    local sj = require "sj"

    sj.setup {
        auto_jump = true,
        highlights = {
            SjLabel = { link = "LeapLabelPrimary" },
        },
    }

    vim.keymap.set("n", "<leader>j", sj.run)
end
