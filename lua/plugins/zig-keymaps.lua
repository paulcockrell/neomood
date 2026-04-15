return {
	{
		"LazyVim/LazyVim",
		opts = function()
			vim.api.nvim_create_autocmd("FileType", {
				pattern = "zig",
				callback = function()
					local map = vim.keymap.set

					map("n", "<leader>zr", ":!zig run %<CR>", { buffer = true, desc = "Zig Run" })
					map("n", "<leader>zb", ":!zig build<CR>", { buffer = true, desc = "Zig Build" })

					vim.lsp.inlay_hint.enable(true, { bufnr = 0 })

					map("n", "<leader>zh", function()
						vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = 0 }), { bufnr = 0 })
					end, { buffer = true, desc = "Toggle Inlay Hints" })
				end,
			})
		end,
	},
}
