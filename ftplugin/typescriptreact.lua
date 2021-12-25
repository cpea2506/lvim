local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{
		exe = "prettierd",
		filetypes = { "typescriptreact" },
		args = { "--no-semi" },
	},
})

local linters = require("lvim.lsp.null-ls.lineters")
linters.setup({ { exe = "eslint_d", filetypes = "typescriptreact" } })
