local status_ok, popfix = pcall(require, "popfix")

if not status_ok then
    return
end

vim.ui.input = function(opts, onConfirm)
    local popup_opts = {
        mode = vim.bo.filetype ~= "NvimTree" and "cursor" or "editor",
        close_on_bufleave = true,
        keymaps = {
            i = {
                ["<Cr>"] = function(popup)
                    local function confirm(_, text)
                        onConfirm(text)
                    end

                    popup:close(confirm)
                end,
                ["<C-c>"] = function(popup)
                    popup:close()
                end,
            },
            n = {
                ["<Cr>"] = function(popup)
                    local function confirm(_, text)
                        onConfirm(text)
                    end

                    popup:close(confirm)
                end,
                ["q"] = function(popup)
                    popup:close()
                end,
            },
        },
        prompt = {
            width = 40,
            numbering = false,
            title = opts.prompt,
            highlight = "Operator",
            prompt_highlight = "Normal",
            init_text = opts.default,
            border = true,
            border_chars = {
                TOP_LEFT = "╭",
                TOP_RIGHT = "╮",
                MID_HORIZONTAL = "─",
                MID_VERTICAL = "│",
                BOTTOM_LEFT = "╰",
                BOTTOM_RIGHT = "╯",
            },
        },
    }

    popfix:new(popup_opts)
end
