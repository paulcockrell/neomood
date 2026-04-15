return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"RRethy/nvim-treesitter-endwise",
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		build = ":TSUpdate",
		event = "VeryLazy",
		config = function()
			local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
			if not parser_config.crystal then
				parser_config.crystal = {
					install_info = {
						url = "https://github.com/crystal-lang-tools/tree-sitter-crystal",
						files = { "src/parser.c", "src/scanner.c" },
						branch = "main", -- repo uses main
					},
					filetype = "crystal",
				}
			end

			require("nvim-treesitter.configs").setup({
				auto_install = true,
				ensure_installed = {
					"crystal",
					"ruby",
					"html",
					"css",
					"scss",
					"javascript",
					"typescript",
					"solidity",
					"yaml",
					"json",
					"lua",
					"vim",
					"query",
					"embedded_template",
					"bash",
					"python",
					"tsx",
					"zig",
				},

				highlight = {
					enable = true,
				},

				indent = { enable = true, disable = { "ruby", "python" } },

				textobjects = {
					swap = {
						enable = true,
						swap_next = {
							["g]f"] = "@function.outer",
						},
						swap_previous = {
							["g[f"] = "@function.outer",
						},
					},
				},

				endwise = { enable = true },
			})
		end,
	},
}
