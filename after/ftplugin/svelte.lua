require("lvim.lsp.manager").setup("tailwindcss", {
    filetypes = { "svelte" },
})
require("lvim.lsp.manager").setup("emmet_ls", {
    filetypes = { "svelte" },
})

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "prettier",
        filetypes = { "svelte" },
    },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
    {
        command = "eslint_d",
        filetypes = { "svelte" },
    },
    {
        command = "stylelint",
        filetypes = { "svelte" },
    },
}
