vim.opt_local.textwidth = 80

require("lvim.lsp.manager").setup "marksman"

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "prettier",
        filetypes = { "markdown" },
    },
}
