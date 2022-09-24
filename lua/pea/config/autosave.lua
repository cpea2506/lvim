return function()
    require("auto-save").setup {
        execution_message = {
            message = "God save file for you. Don't try to refuse it!",
        },
        trigger_events = "InsertLeave",
    }
end
