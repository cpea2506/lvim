local plugins = {
    { "cpea2506/one_monokai.nvim" },
    {
        "ggandor/leap.nvim",
        event = "BufRead",
    },
    {
        "p00f/nvim-ts-rainbow",
        event = "BufRead",
    },
    {
        "nvim-treesitter/playground",
        event = "BufRead",
    },
    {
        "hrsh7th/cmp-nvim-lsp-signature-help",
        event = "InsertEnter",
    },
    {
        "lukas-reineke/cmp-rg",
        event = "InsertEnter",
    },
    {
        "windwp/nvim-ts-autotag",
        ft = { "html", "javascriptreact", "typescriptreact", "svelte", "tsx", "jsx" },
        event = "InsertEnter",
    },
    {
        "max397574/better-escape.nvim",
        config = require "pea.config.better_escape",
        event = "InsertEnter",
    },
    {
        "simrat39/inlay-hints.nvim",
        config = require "pea.config.inlay_hints",
        event = "BufRead",
    },
    {
        "kosayoda/nvim-lightbulb",
        config = require "pea.config.lightbulb",
        event = "BufRead",
    },
    {
        "stevearc/dressing.nvim",
        config = require "pea.config.dressing",
        event = "BufRead",
    },
    {
        "simrat39/rust-tools.nvim",
        config = require "pea.config.rust_tools",
        ft = { "rust", "rs" },
    },
    {
        "nacro90/numb.nvim",
        config = require "pea.config.numb",
        event = "BufRead",
    },
    {
        "Saecki/crates.nvim",
        config = require "pea.config.crates",
        event = "BufRead Cargo.toml",
    },
    {
        "brenoprata10/nvim-highlight-colors",
        config = require "pea.config.highlight_colors",
        event = "BufRead",
    },
    {
        "cpea2506/presence.nvim",
        config = require "pea.config.presence",
        event = "BufRead",
    },
    {
        "declancm/cinnamon.nvim",
        config = require "pea.config.cinnamon",
        event = "BufRead",
    },
}

return plugins
