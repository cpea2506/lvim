return function()
    local status_ok, notifier = pcall(require, "notifier")

    if not status_ok then
        return
    end

    notifier.setup {
        components = { "lsp" },
    }
end
