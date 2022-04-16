lvim.plugins = {
    { "cpea2506/one_monokai.nvim" },
    {
        "p00f/nvim-ts-rainbow",
        event = "BufRead",
    },
    {
        "windwp/nvim-ts-autotag",
        config = function()
            require("pea.config.autotag").config()
        end,
        ft = { "html", "javascript", "javascriptreact", "typescriptreact" },
        event = "InsertEnter",
    },
    {
        "simrat39/rust-tools.nvim",
        config = function()
            require("pea.config.rust-tools").config()
        end,
        ft = { "rust", "rs" },
        event = "BufRead *.rs",
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
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("pea.config.colorizer").config()
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
}
