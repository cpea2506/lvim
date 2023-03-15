local plugins = {
    "cpea2506/one_monokai.nvim",
    {
        "cpea2506/relative-toggle.nvim",
        event = "BufRead",
    },
    {
        "HiPhish/nvim-ts-rainbow2",
        event = "BufRead",
    },
    {
        "ggandor/leap.nvim",
        event = "VeryLazy",
    },
    {
        "asiryk/auto-hlsearch.nvim",
        event = "VeryLazy",
        config = require "pea.config.hlsearch",
    },
    {
        "anuvyklack/windows.nvim",
        event = "BufRead",
        config = require "pea.config.windows",
        dependencies = {
            "anuvyklack/middleclass",
            "anuvyklack/animation.nvim",
        },
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        config = require "pea.config.noice",
        dependencies = "MunifTanjim/nui.nvim",
    },
    {
        "ur4ltz/move.nvim",
        event = "VeryLazy",
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
    },
    {
        "woosaaahh/sj.nvim",
        event = "VeryLazy",
        config = require "pea.config.sj",
    },
    {
        "TheBlob42/houdini.nvim",
        event = "InsertEnter",
        config = require "pea.config.houdini",
    },
    {
        "simrat39/rust-tools.nvim",
        ft = "rust",
        config = require "pea.config.rust_tools",
    },
    {
        "lvimuser/lsp-inlayhints.nvim",
        event = "VeryLazy",
        config = require "pea.config.inlayhints",
    },
    {
        "kosayoda/nvim-lightbulb",
        event = "VeryLazy",
        config = require "pea.config.lightbulb",
    },
    {
        "folke/todo-comments.nvim",
        event = "BufRead",
        config = require "pea.config.todo_comments",
    },
    {
        "samodostal/image.nvim",
        event = "BufRead",
        config = require "pea.config.image",
        dependencies = "m00qek/baleia.nvim",
    },
    {
        "stevearc/dressing.nvim",
        event = "VeryLazy",
        config = require "pea.config.dressing",
    },
    {
        "nacro90/numb.nvim",
        event = "VeryLazy",
        config = require "pea.config.numb",
    },
    {
        "Saecki/crates.nvim",
        event = "BufRead Cargo.toml",
        config = require "pea.config.nvim_crates",
    },
    {
        "brenoprata10/nvim-highlight-colors",
        event = "BufRead",
        config = require "pea.config.hi_colors",
    },
    {
        "cpea2506/presence.nvim",
        event = "BufRead",
        config = require "pea.config.presence",
    },
    {
        "declancm/cinnamon.nvim",
        event = "VeryLazy",
        config = require "pea.config.cinnamon",
    },
    {
        "kylechui/nvim-surround",
        event = "VeryLazy",
        config = require "pea.config.nvim_surround",
    },
    {
        "nvim-treesitter/playground",
        cmd = { "TSHighlightCapturesUnderCursor", "TSHighlightCapturesUnderCursor" },
    },
    {
        "folke/trouble.nvim",
        cmd = "TroubleToggle",
        config = require "pea.config.trouble",
    },
}

return plugins
