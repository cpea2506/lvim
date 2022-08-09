require("lvim.lsp.manager").setup("emmet_ls", {
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
