return function()
    require("auto-save").setup {
        trigger_events = { "InsertLeave" },
        execution_message = {
            message = "God save for you. Don't try to reject!",
        },
    }
end
