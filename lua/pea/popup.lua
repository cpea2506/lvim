local popfix = require "popfix"

local ui_popup_ref = nil

vim.ui.input = function(opts, onConfirm)
    assert(ui_popup_ref == nil, "Busy in other LSP popup.")

    ui_popup_ref = popfix:new {
        mode = "editor",
        close_on_bufleave = true,
        keymaps = {
            i = {
                ["<Cr>"] = function(popup)
                    popup:close(function(_, text)
                        onConfirm(text)
                    end)
                    ui_popup_ref = nil
                end,
                ["<C-c>"] = function(popup)
                    popup:close()
                    ui_popup_ref = nil
                end,
                ["<Esc>"] = function(popup)
                    popup:close()
                    ui_popup_ref = nil
                end,
            },
        },
        callbacks = {
            close = function()
                ui_popup_ref = nil
            end,
        },
        prompt = {
            border = true,
            numbering = true,
            title = opts.prompt,
            -- rounded
            border_chars = {
                TOP_LEFT = "╭",
                TOP_RIGHT = "╮",
                MID_HORIZONTAL = "─",
                MID_VERTICAL = "│",
                BOTTOM_LEFT = "╰",
            },
            highlight = "Operator",
            prompt_highlight = "Normal",
            init_text = opts.default,
        },
    }
end
