require("lvim.lsp.manager").setup "sourcekit"

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "swiftformat",
        filetypes = { "swift" },
    },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
    {
        command = "swiftlint",
        filetypes = { "swift" },
    },
}
