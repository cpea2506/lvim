return function()
    local status_ok, inlay_hints = pcall(require, "lsp-inlayhints")

    if not status_ok then
        return
    end

    inlay_hints.setup {
        inlay_hints = {
            highlight = "Comment",
        },
    }
end
