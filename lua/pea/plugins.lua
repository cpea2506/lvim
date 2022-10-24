local plugins = {
    "cpea2506/one_monokai.nvim",
    {
        "fedepujol/move.nvim",
        config = require "pea.config.move",
        event = "BufRead",
    },
    {
        "hrsh7th/cmp-nvim-lsp-signature-help",
        event = "InsertEnter",
    },
    {
        "hrsh7th/cmp-cmdline",
        event = "CmdlineEnter",
    },
    {
        "lukas-reineke/cmp-rg",
        event = "InsertEnter",
    },
    {
        "ggandor/leap.nvim",
        event = "BufRead",
    },
    {
        "windwp/nvim-ts-autotag",
        ft = { "html", "typescriptreact", "svelte" },
    },
    {
        "folke/trouble.nvim",
        config = require "pea.config.trouble",
        cmd = "TroubleToggle",
    },
    {
        "woosaaahh/sj.nvim",
        config = require "pea.config.sj",
        after = "which-key.nvim",
    },
    {
        "TheBlob42/houdini.nvim",
        config = require "pea.config.houdini",
        event = "InsertEnter",
    },
    {
        "simrat39/rust-tools.nvim",
        config = require "pea.config.rust_tools",
        ft = { "rust" },
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
        "folke/todo-comments.nvim",
        config = require "pea.config.todo_comments",
        event = "BufRead",
    },
    {
        "theHamsta/nvim-semantic-tokens",
        config = require "pea.config.semantic_tokens",
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
        "nacro90/numb.nvim",
        config = require "pea.config.numb",
        event = "BufRead",
    },
    {
        "Saecki/crates.nvim",
        config = require "pea.config.nvim_crates",
        event = "BufRead Cargo.toml",
    },
    {
        "brenoprata10/nvim-highlight-colors",
        config = require "pea.config.hi_colors",
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
