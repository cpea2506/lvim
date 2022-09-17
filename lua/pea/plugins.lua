local plugins = {
    {
        "cpea2506/one_monokai.nvim",
        branch = "dev-0.8",
    },
    {
        "nvim-treesitter/playground",
        event = "BufRead",
    },
    {
        "p00f/nvim-ts-rainbow",
        event = "BufRead",
    },
    {
        "ggandor/leap.nvim",
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
        ft = { "html", "typescriptreact", "svelte" },
        event = "InsertEnter",
    },
    {
        "theHamsta/nvim-semantic-tokens",
        config = require "pea.config.semantic_tokens",
        event = "BufRead",
    },
    {
        "utilyre/barbecue.nvim",
        config = require "pea.config.barbecue",
        requires = "SmiteshP/nvim-navic",
        event = "BufRead",
    },
    {
        "max397574/better-escape.nvim",
        config = require "pea.config.better_escape",
        event = "InsertEnter",
    },
    {
        "lvimuser/lsp-inlayhints.nvim",
        config = require "pea.config.inlayhints",
        event = "BufRead",
    },
    {
        "kosayoda/nvim-lightbulb",
        config = require "pea.config.lightbulb",
        event = "BufRead",
    },
    {
        "samodostal/image.nvim",
        config = require "pea.config.image",
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
    {
        "kylechui/nvim-surround",
        config = require "pea.config.nvim_surround",
        event = "BufRead",
    },
    {
        "vigoux/notifier.nvim",
        config = require "pea.config.notifier",
        event = "BufRead",
    },
}

return plugins
