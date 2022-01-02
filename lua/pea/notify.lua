lvim.builtin.notify.active = true
lvim.builtin.notify.opts.stages = "fade_in_slide_out"
lvim.builtin.notify.opts.timeout = 1000

-- ERROR-FIX: Highlight group Normal has no background highlight
lvim.builtin.notify.opts.background_colour = function()
    return "#abb2bf"
end
