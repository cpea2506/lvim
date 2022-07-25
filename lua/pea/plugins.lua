local plugins = {
    { "cpea2506/one_monokai.nvim" },
    {
        "ggandor/leap.nvim",
        event = "BufRead",
    },
    {
        "nvim-treesitter/playground",
        event = "BufRead",
    },
    {
        "windwp/nvim-ts-autotag",
        ft = { "html", "javascriptreact", "typescriptreact", "svelte", "tsx", "jsx" },
        event = "InsertEnter",
    },
    {
        "phaazon/hop.nvim",
        config = function()
            require("pea.config.hop").config()
        end,
        event = "BufRead",
    },
    {
        "kosayoda/nvim-lightbulb",
        config = function()
            require("pea.config.lightbulb").config()
        end,
        event = "BufRead",
    },
    {
        "p00f/nvim-ts-rainbow",
        event = "BufRead",
    },
    {
        "stevearc/dressing.nvim",
        config = function()
            require("pea.config.dressing").config()
        end,
        event = "BufRead",
    },
    {
        "simrat39/rust-tools.nvim",
        config = function()
            require("pea.config.rust_tools").config()
        end,
        ft = { "rust", "rs" },
    },
    {
        "nacro90/numb.nvim",
        config = function()
            require("pea.config.numb").config()
        end,
        event = "BufRead",
    },
    {
        "Saecki/crates.nvim",
        config = function()
            require("pea.config.crates").config()
        end,
        event = "BufRead Cargo.toml",
    },
    {
        "brenoprata10/nvim-highlight-colors",
        config = function()
            require("pea.config.highlight_colors").config()
        end,
        event = "BufRead",
    },
    {
        "cpea2506/presence.nvim",
        config = function()
            require("pea.config.presence").config()
        end,
        event = "BufRead",
    },
    {
        "hrsh7th/cmp-nvim-lsp-signature-help",
        event = "InsertEnter",
    },
}

return plugins
