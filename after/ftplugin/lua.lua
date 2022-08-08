require("lvim.lsp.manager").setup("sumneko_lua", {
    on_attach = function(c, b)
        pcall(function()
            require("inlay-hints").on_attach(c, b)
        end)

        require("lvim.lsp").common_on_attach(c, b)
    end,
})

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "stylua",
        filetypes = { "lua" },
    },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
    {
        command = "selene",
        filetypes = { "lua" },
    },
}
