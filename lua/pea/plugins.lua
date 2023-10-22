local plugins = {
    "cpea2506/one_monokai.nvim",
    {
        "cpea2506/relative-toggle.nvim",
        event = "BufRead",
    },
    {
        "cpea2506/presence.nvim",
        event = "BufRead",
        config = require "pea.config.presence",
    },
    {
        "jmederosalvarado/roslyn.nvim",
        ft = "cs",
        config = require "pea.config.roslyn",
    },
    {
        "luckasRanarison/clear-action.nvim",
        event = "BufRead",
        config = require "pea.config.clear_action",
    },
    {
        "folke/flash.nvim",
        event = "BufRead",
        config = require "pea.config.flash",
    },
    {
        "akinsho/git-conflict.nvim",
        event = "BufRead",
        config = require "pea.config.conflict",
    },
    {
        "chrishrb/gx.nvim",
        event = "BufRead",
        config = require "pea.config.gx",
    },
    {
        "HiPhish/rainbow-delimiters.nvim",
        event = "BufRead",
    },
    {
        "asiryk/auto-hlsearch.nvim",
        event = "BufRead",
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
        event = "BufRead",
        config = require "pea.config.noice",
        dependencies = "MunifTanjim/nui.nvim",
    },
    {
        "ur4ltz/move.nvim",
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
        "TheBlob42/houdini.nvim",
        event = "InsertEnter",
        config = require "pea.config.houdini",
    },
    {
        "mrcjkb/rustaceanvim",
        ft = "rust",
        config = require "pea.config.rustacean",
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
        event = "BufRead",
        config = require "pea.config.dressing",
    },
    {
        "nacro90/numb.nvim",
        keys = ":",
        config = require "pea.config.numb",
    },
    {
        "Saecki/crates.nvim",
        event = "BufRead Cargo.toml",
        config = require "pea.config.crates",
    },
    {
        "kylechui/nvim-surround",
        event = "BufRead",
        config = require "pea.config.surround",
    },
    {
        "folke/trouble.nvim",
        cmd = "TroubleToggle",
        config = require "pea.config.trouble",
    },
}

return plugins
