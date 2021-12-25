-- Additional Plugins
lvim.plugins = {
	{ "myusuf3/numbers.vim" },
	{ "matze/vim-move" },
	{ "cpea2506/one_monokai.nvim" },
	{
		"nacro90/numb.nvim",
		config = function()
			require("pea.config.numb").config()
		end,
		event = "BufRead",
	},
	{
		"andweeb/presence.nvim",
		config = function()
			require("pea.config.presence").config()
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("pea.config.colorizer").config()
		end,
	},
	{
		"simrat39/rust-tools.nvim",
		ft = "rust",
		after = "nvim-lsp-installer",
	},
	{
		"Saecki/crates.nvim",
		event = { "BufRead Cargo.toml" },
		config = function()
			require("pea.config.crates").config()
		end,
	},
}
