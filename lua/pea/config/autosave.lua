return function()
    local status_ok, autosave = pcall(require, "auto-save")

    if not status_ok then
        return
    end

    autosave.setup {
        execution_message = {
            message = "God save file for you. Don't try to refuse it!",
        },
        trigger_events = "InsertLeave",
    }
end
