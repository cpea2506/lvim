local function hot_reload()
    os.execute 'kill -s USR1 "$(pgrep -f flutter_tools.snapshot\\ run)" &> /dev/null'
end

vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.dart",
    callback = hot_reload,
})
