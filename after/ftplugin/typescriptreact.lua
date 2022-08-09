require("lvim.lsp.manager").setup("emmet_ls", {
    filetypes = { "typescriptreact" },
})
require("lvim.lsp.manager").setup("tailwindcss", {
    filetypes = { "typescriptreact" },
})

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "prettier",
        filetypes = { "typescriptreact" },
    },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
    {
        command = "eslint_d",
        filetypes = { "typescriptreact" },
    },
}
