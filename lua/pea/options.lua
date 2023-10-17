local options = {
    wrap = true,
    tabstop = 4,
    list = false,
    hidden = true,
    cmdheight = 0,
    shiftwidth = 4,
    whichwrap = "",
    showtabline = 0,
    linebreak = true,
    timeoutlen = 500,
    autoindent = true,
    fillchars = { eob = " " },
    guicursor = "i-ci-ve:hor30",
    guifont = "SFMono Nerd Font:h13",

    -- windows.nvim
    winwidth = 10,
    winminwidth = 10,
    equalalways = false,

    -- shell
    shell = "pwsh.exe",
    shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
}

vim.cmd [[
		let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
		let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
		set shellquote= shellxquote=
  ]]

vim.g.clipboard = {
    copy = {
        ["+"] = "win32yank.exe -i --crlf",
        ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
        ["+"] = "win32yank.exe -o --lf",
        ["*"] = "win32yank.exe -o --lf",
    },
}

return options
