local lsp = require "lvim.lsp"

require("lvim.lsp.manager").setup("omnisharp", {
    handlers = {
        ["textDocument/definition"] = require("omnisharp_extended").handler,
    },
    on_attach = function(client, bufnr)
        client.server_capabilities.semanticTokensProvider.legend = {
            tokenModifiers = { "static" },
            tokenTypes = {
                "comment",
                "excluded",
                "identifier",
                "keyword",
                "keyword",
                "number",
                "operator",
                "operator",
                "preprocessor",
                "string",
                "whitespace",
                "text",
                "static",
                "preprocessor",
                "punctuation",
                "string",
                "string",
                "class",
                "delegate",
                "enum",
                "interface",
                "module",
                "struct",
                "typeParameter",
                "field",
                "enumMember",
                "constant",
                "local",
                "parameter",
                "method",
                "method",
                "property",
                "event",
                "_namespace",
                "label",
                "xml",
                "xml",
                "xml",
                "xml",
                "xml",
                "xml",
                "xml",
                "xml",
                "xml",
                "xml",
                "xml",
                "xml",
                "xml",
                "xml",
                "xml",
                "xml",
                "xml",
                "xml",
                "xml",
                "xml",
                "xml",
                "regexp",
                "regexp",
                "regexp",
                "regexp",
                "regexp",
                "regexp",
                "regexp",
                "regexp",
                "regexp",
            },
        }

        lsp.common_on_attach(client, bufnr)
    end,
})

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "csharpier",
        filetypes = { "cs" },
    },
}
