local options = {
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

for key, value in pairs(options) do
    vim.opt[key] = value
end
