return {
	{
		"stevearc/conform.nvim",
		event = "VeryLazy",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettier" },
				javascriptscript = { "prettier" },
				typescript = { "prettier" },
				typescriptreact = { "prettier" },
				crystal = { "crystal" },
				zig = { "zigfmt" },
			},
		},
	},
}
