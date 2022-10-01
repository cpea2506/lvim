return function()
    local status_ok, highlight_colors = pcall(require, "nvim-highlight-colors")

    highlight_colors.setup()
end
