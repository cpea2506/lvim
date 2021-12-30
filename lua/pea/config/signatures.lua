local M = {}

M.config = function()
    local status_ok, lsp_signature = pcall(require, "lsp_signature")

    if not status_ok then
        return
    end

    lsp_signature.setup {
        bind = true,
        handler_opts = {
            border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
        },
        floating_window = true,
        floating_window_above_cur_line = true,
        hint_enable = true,
        hint_prefix = "🐼 ",
        hint_scheme = "String",
        hi_parameter = "LspSignatureActiveParameter",
        max_height = 12,
        max_width = 150,
        transparency = 20,
        always_trigger = true,
        auto_close_after = 20,
        extra_trigger_chars = { "(", "," },
        zindex = 200,
        padding = "",
        timer_interval = 100,
    }
end

return M
