local plugins = {
    "cpea2506/one_monokai.nvim",
    {
        "jmederosalvarado/roslyn.nvim",
        config = require "pea.config.roslyn",
    },
    {
        "hinell/lsp-timeout.nvim",
        dependencies = "neovim/nvim-lspconfig",
    },
    {
        "luckasRanarison/clear-action.nvim",
        config = require "pea.config.clear_action",
        event = "BufRead",
    },
    {
        "folke/flash.nvim",
        config = require "pea.config.flash",
        event = "VeryLazy",
    },
    {
        "akinsho/git-conflict.nvim",
        config = require "pea.config.conflict",
        event = "BufRead",
    },
    {
        "cpea2506/relative-toggle.nvim",
        event = "BufRead",
    },
    {
        "Hoffs/omnisharp-extended-lsp.nvim",
        ft = "cs",
    },
    {
        "chrishrb/gx.nvim",
        event = "BufEnter",
        config = require "pea.config.gx",
    },
    {
        "HiPhish/rainbow-delimiters.nvim",
        event = "BufRead",
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
        "TheBlob42/houdini.nvim",
        event = "InsertEnter",
        config = require "pea.config.houdini",
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
        "cpea2506/presence.nvim",
        event = "BufRead",
        config = require "pea.config.presence",
    },
    {
        "kylechui/nvim-surround",
        event = "VeryLazy",
        config = require "pea.config.nvim_surround",
    },
    {
        "folke/trouble.nvim",
        cmd = "TroubleToggle",
        config = require "pea.config.trouble",
    },
}

return plugins
