return {
	{
		"catppuccin/nvim",
		-- enabled = false,
		name = "catppuccin",
		priority = 1000,
		lazy = false,
		config = function()
			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},
}
