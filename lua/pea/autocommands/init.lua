local callbacks = require "pea.autocommands.callbacks"

local autocommands = {
    {
        "BufEnter",
        {
            callback = callbacks.open_tree_on_setup,
        },
    },
    {
        "LspAttach",
        {
            callback = callbacks.on_lsp_attach,
        },
    },
}

return autocommands
