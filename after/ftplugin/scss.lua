require("lvim.lsp.manager").setup("emmet_ls", {
    filetypes = { "scss" },
})

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "prettier",
        filetypes = { "scss" },
    },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
    {
        command = "stylelint",
        filetypes = { "scss" },
    },
}
