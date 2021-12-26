local options = {
    wrap = true,
    list = false,
    hidden = true,
    linebreak = true,
    lazyredraw = true,
    relativenumber = true,
    autoindent = true,
    showcmd = false,
    tabstop = 4,
    shiftwidth = 4,
    fillchars = "eob: ",
    guifont = "JetBrainsMonoMedium Nerd Font:h12",
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
