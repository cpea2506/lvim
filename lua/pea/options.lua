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
    whichwrap = "",
    fillchars = "eob: ",
    guifont = "SFMono Nerd Font:h13",
    guicursor = "n-v-c-sm:block,i-ci-ve:hor30,r-cr-o:hor20",
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
