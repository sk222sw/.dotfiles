local lspconfig = require("lspconfig")

lspconfig.gleam.setup({})

lspconfig.gleam.setup({
	cmd = { "gleam", "lsp" },
	filetypes = { "gleam" },
	root_dir = lspconfig.util.root_pattern("gleam.toml", ".git"),
})

require("nvim-treesitter.configs").setup({
	ensure_installed = { "gleam" },
	highlight = {
		enable = true,
	},
})
