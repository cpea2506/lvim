local actions = require "telescope.actions"

local telescope = {
    defaults = {
        file_ignore_patterns = { "^.git/" },
        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-n>"] = actions.cycle_history_next,
                ["<C-p>"] = actions.cycle_history_prev,
            },
            n = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
            },
        },
    },
    on_config_done = function(teles)
        teles.load_extension "file_browser"
    end,
}

return telescope
