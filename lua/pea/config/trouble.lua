return function()
    local status_ok, trouble = pcall(require, "trouble")

    if not status_ok then
        return
    end

    trouble.setup {
        auto_open = false,
        auto_close = true,
        use_diagnostic_signs = true,
    }
end
