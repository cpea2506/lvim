return function()
    local status_ok, inlay_hints = pcall(require, "inlay-hints")

    if not status_ok then
        return
    end

    inlay_hints.setup {
        renderer = "inlay-hints.render.eol",
    }
end
