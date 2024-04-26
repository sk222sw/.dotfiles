return {
	"folke/flash.nvim",
	-- enabled = false,
	event = "VeryLazy",
	opts = {},
  -- stylua: ignore
  keys = {
    { "<leader>fj", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "<leader>fs", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "<leader>fr", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "<leader>fr", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    --{ "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
}
