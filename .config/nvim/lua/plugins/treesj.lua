return {
	"Wansmer/treesj",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		local treesj = require("treesj")

		treesj.setup({
			use_default_keymaps = false,
		})

		vim.keymap.set("n", "<leader>jj", ":TSJToggle<CR>", { desc = "Toggle lines" })

		require("which-key").register({
			["<leader>j"] = { name = "Split/Join", _ = "which_key_ignore" },
		})
	end,
}
