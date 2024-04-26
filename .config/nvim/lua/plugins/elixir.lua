return {
	"elixir-tools/elixir-tools.nvim",
	-- enabled = false,
	version = "*",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local elixir = require("elixir")
		local elixirls = require("elixir.elixirls")

		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"elixir",
				"heex",
				"eex",
			},
		})

		elixir.setup({
			nextls = { enable = true },
			credo = {},
			elixirls = {
				enable = true,
				settings = elixirls.settings({
					dialyzerEnabled = false,
					enableTestLenses = false,
				}),
				on_attach = function(client, bufnr)
					-- vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
					vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
					-- vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })
				end,
			},
		})

		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		require("lspconfig").elixirls.setup({
			cmd = { "elixir-ls" },
			capabilities = capabilities,
		})
	end,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
}
