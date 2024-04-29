return {
	"lukas-reineke/indent-blankline.nvim",
	-- enabled = false,
	main = "ibl",
	opts = {
		scope = { enabled = false },
	},
	config = function()
		local highlight = {
			"IndentColor",
		}

		local hooks = require("ibl.hooks")
		-- create the highlight groups in the highlight setup hook, so they are reset
		-- every time the colorscheme changes
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "IndentColor", { fg = "#2c2c2c" })
		end)

		require("ibl").setup({ indent = { highlight = highlight } })
	end,
}
