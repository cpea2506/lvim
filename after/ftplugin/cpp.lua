local clangd_flags = {
    "--background-index",
    "--all-scopes-completion",
    "--clang-tidy",
    "--log=error",
    "--suggest-missing-includes",
    "--cross-file-rename",
    "--completion-style=detailed",
    "--pch-storage=memory",
    "--folding-ranges",
    "--enable-config",
    "--offset-encoding=utf-16",
    "--clang-tidy-checks=-*,llvm-*,clang-analyzer-*,modernize-*,-modernize-use-trailing-return-type",
}

require("lvim.lsp.manager").setup("clangd", {
    cmd = { "clangd", unpack(clangd_flags) },
})

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "clang-format",
        filetypes = { "cpp" },
    },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
    {
        command = "cppcheck",
        filetypes = { "cpp" },
    },
}
