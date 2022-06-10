local opts = {
    normal_mode = {
        -- better window movement
        ["<C-h>"] = "<C-w>h",
        ["<C-j>"] = "<C-w>j",
        ["<C-k>"] = "<C-w>k",
        ["<C-l>"] = "<C-w>l",

        -- move current line / block
        ["<A-j>"] = ":m .+1<CR>==",
        ["<A-k>"] = ":m .-2<CR>==",

        -- other plugins
        ["<C-e>"] = ":bdelete!<CR>",
        ["<C-b>"] = ":NvimTreeToggle<CR>",
        ["<C-p>"] = ":Telescope find_files<CR>",
        ["<C-s>"] = ":w<CR>",
        ["gm"] = ":TSHighlightCapturesUnderCursor<CR>",
    },
    insert_mode = {
        -- move current line / block
        ["<A-j>"] = "<Esc>:m .+1<CR>==gi",
        ["<A-k>"] = "<Esc>:m .-2<CR>==gi",
    },
    visual_mode = {
        -- better indenting
        ["<"] = "<gv",
        [">"] = ">gv",
    },
    visual_block_mode = {
        -- move selected line / block of text in visual mode
        ["K"] = ":move '<-2<CR>gv-gv",
        ["J"] = ":move '>+1<CR>gv-gv",

        -- move current line / block
        ["<A-j>"] = ":m '>+1<CR>gv-gv",
        ["<A-k>"] = ":m '<-2<CR>gv-gv",
    },
}

return opts
