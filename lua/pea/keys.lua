-- add your own keymapping
-- keymappings [view all the defaults by pressing <leader>Lk]
-- edit a default keymapping

lvim.keys = {
    normal_mode = {
        -- Better window movement
        ["<C-h>"] = "<C-w>h",
        ["<C-j>"] = "<C-w>j",
        ["<C-k>"] = "<C-w>k",
        ["<C-l>"] = "<C-w>l",

        -- Tab switch buffer
        ["<S-l>"] = ":BufferNext<CR>",
        ["<S-h>"] = ":BufferPrevious<CR>",

        -- Move current line / block
        ["<A-j>"] = ":m .+1<CR>==",
        ["<A-k>"] = ":m .-2<CR>==",

        -- other plugins
        ["<C-e>"] = ":BufferClose<CR>",
        ["<C-b>"] = ":NvimTreeToggle<CR>",
        ["<C-p>"] = ":Telescope find_files<CR>",
        ["<C-s>"] = ":w<CR>",
    },
    insert_mode = {
        -- Move current line / block
        ["<A-j>"] = "<Esc>:m .+1<CR>==gi",
        ["<A-k>"] = "<Esc>:m .-2<CR>==gi",
    },
    visual_mode = {
        -- Better indenting
        ["<"] = "<gv",
        [">"] = ">gv",
    },
    visual_block_mode = {
        -- Move selected line / block of text in visual mode
        ["K"] = ":move '<-2<CR>gv-gv",
        ["J"] = ":move '>+1<CR>gv-gv",

        -- Move current line / block
        ["<A-j>"] = ":m '>+1<CR>gv-gv",
        ["<A-k>"] = ":m '<-2<CR>gv-gv",
    },
}

local status_ok, actions = pcall(require, "telescope.actions")
if status_ok then
    lvim.builtin.telescope.defaults.mappings = {
        -- for input mode
        i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-n>"] = actions.cycle_history_next,
            ["<C-p>"] = actions.cycle_history_prev,
        },
        -- for normal mode
        n = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
        },
    }
end

lvim.builtin.which_key.mappings.l.d[1] = ":Telescope diagnostics bufnr=0<CR>"
lvim.builtin.which_key.mappings.l.w[1] = ":Telescope diagnostics<CR>"

lvim.builtin.bufferline.keymap.normal_mode = {
    ["<Tab>"] = ":BufferNext<CR>",
    ["<S-Tab>"] = ":BufferPrevious<CR>",
}
