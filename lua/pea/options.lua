local function set_options(options)
    for _, table in pairs(options) do
        local scope = table.scope
        for k, v in pairs(table.opts) do
            vim[scope][k] = v
        end
    end
end

local vim_opts = {
    wrap = true,
    list = false,
    hidden = true,
    showcmd = false,
    linebreak = true,
    relativenumber = true,
    autoindent = true,
    tabstop = 4,
    shiftwidth = 4,
    fillchars = "eob: ",
    whichwrap = "",
    guifont = "SFMono Nerd Font:h13",
    guicursor = "n-v-c-sm:block,i-ci-ve:hor30,r-cr-o:hor20",
}

local plugin_opts = {
    neovide_cursor_vfx_mode = "sonicboom",
    neovide_cursor_animation_length = 0.12,
    neovide_transparency = 0.75,
}

set_options {
    { scope = "opt", opts = vim_opts },
    { scope = "g", opts = plugin_opts },
}
